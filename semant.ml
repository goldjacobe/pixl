(* Semantic checking for the PIXL compiler *)

open Ast
open Sast

module StringMap = Map.Make(String)

let report_duplicate exceptf list =
  let rec helper = function
      n1 :: n2 :: _ when n1 = n2 -> raise (Failure (exceptf n1))
    | _ :: t -> helper t
    | [] -> ()
  in helper (List.sort compare list)


let rec check_binds exceptf = function
    (Void, s) :: tl -> raise (Failure(exceptf s))
  | hd :: tl        -> check_binds exceptf tl
  | _               -> ()


let check_function globals fdecls func =

  let _ = report_duplicate (fun n -> "duplicate formal " ^ n ^ " in " ^
    func.fname) (List.map snd func.formals) in
  let _ = check_binds (fun n -> "illegal void formal " ^ n ^ " in " ^
    func.fname) func.formals in
  let _ = report_duplicate (fun n -> "duplicate local " ^ n ^ " in " ^
    func.fname) (List.map snd func.locals) in
  let _ = check_binds (fun n -> "illegal void local " ^ n ^ " in " ^
    func.fname) func.locals in

  let symbols = List.fold_left (fun m (t, n) -> StringMap.add n t m)
    StringMap.empty (globals @ func.formals @ func.locals )
  in

  let type_of_identifier s =
    try StringMap.find s symbols
    with Not_found -> raise (Failure ("undeclared identifier " ^ s))
  in

  let function_decl s = try StringMap.find s fdecls
       with Not_found -> raise (Failure ("unrecognized function " ^ s))
  in

  let rec expr_to_sexpr e = (match e with
      Literal x               -> SLiteral(x, Int)
    | BoolLit b               -> SBoolLit(b, Bool)
    | PixelLit(x1,x2,x3,x4)   -> SPixelLit(expr_to_sexpr x1,expr_to_sexpr x2,expr_to_sexpr x3, expr_to_sexpr x4, Pixel)
    | MatrixLit m             -> (check_matrix m)
    | Id s                    -> SId(s, type_of_identifier s)
    | StringLit s             -> SStringLit(s, String)
    (*| Access(v,e)             -> (check_access v e)*) (*TODO*)
    | Binop(e1, op, e2)       -> (check_binop e1 op e2)
    | Unop(op, e)             -> (check_unop op e)
    | Noexpr                  -> SNoexpr
    | Assign(var, e)          -> (check_assign var e)
    | Call(fname, actuals)    -> (check_call fname actuals)
  )

  and check_call fname actuals =
    let rec helper = function
        ([], []) -> []
      | (_, []) | ([], _) -> raise(Failure("Incorrect number of arguments in call to " ^ fname))
      | ((ft, _) :: formals, e :: actuals) ->
        let se = expr_to_sexpr e in
        let t = sexpr_to_type se in
        if ft = t then se :: helper (formals, actuals) else
          raise (Failure ("illegal actual argument found " ^
          string_of_typ t ^ " expected " ^ string_of_typ ft ^ " in " ^
          string_of_expr e))
    in
    let fd = function_decl fname in
    let formals = fd.formals in
    let sactuals = helper (formals, actuals) in
    SCall(fname, sactuals, fd.typ)

  (*and check_access var exp =
    let sexpr = expr_to_sexpr exp in
    if type_of_identifier var != sexpr_to_type sexpr
    then raise (Failure("Couldn't access - variable and expression are of different types!"))
    else SAccess(var, sexpr, sexpr_to_type sexpr)*)

  and check_binop e1 op e2 =
    let se1 = expr_to_sexpr e1 in
    let se2 = expr_to_sexpr e2 in
    let t1 = sexpr_to_type se1 in
    let t2 = sexpr_to_type se2 in
    (match op with
      Add | Sub | Mult | Div when t1 = Int && t2 = Int -> SBinop(se1,op,se2,Int)
      | Equal | Neq when t1 = t2 -> SBinop(se1,op,se2,Bool)
      | Less | Leq | Greater | Geq when t1 = Int && t2 = Int -> SBinop(se1,op,se2,Int)
      | And | Or when t1 = Bool && t2 = Bool -> SBinop(se1,op,se2,Bool)
      | Add when t1 = String && t2 = String -> SBinop(se1,op,se2,String)
      | Add when t1 = Pixel && t2 = Pixel -> SBinop(se1,op,se2,Pixel)
      | _ -> raise (Failure ("illegal binary operator " ^
          string_of_typ t1 ^ " " ^ string_of_op op ^ " " ^
          string_of_typ t2 ^ " in " ^ string_of_expr e1 ^ string_of_op op ^ string_of_expr e2))
    )

  and check_matrix m =
    let add_if_match_1 l e =
      let se = expr_to_sexpr e in
      match l with
          []      -> (List.append l [se])
        | hd :: _ ->
         let t1 = sexpr_to_type hd in
         let t2 = sexpr_to_type se in
         if t1 = t2 then (List.append l [se]) else raise(Failure("MatrixLit types inconsistent"))
      in
    let add_if_match_2 m l =
      let sl = List.fold_left add_if_match_1 [] l in
      match m with
          []       -> List.append m [sl]
        | [] :: _ ->
          if (List.length sl = 0)
          then List.append m [sl] else raise(Failure("MatrixLit has lists of uneven length"))
        | (hd :: _) :: _ ->
          if (List.length (List.hd m)) != (List.length sl)
          then raise(Failure("MatrixLit has lists of uneven length"))
          else
          let t1 = sexpr_to_type hd in
          let t2 = sexpr_to_type (List.hd sl) in
        if t1 = t2 then List.append m [sl] else raise(Failure("MatrixLit types inconsistent"))
      in
    let sm = List.fold_left add_if_match_2 [] m in
    let t = sexpr_to_type(List.hd(List.hd sm)) in
    SMatrixLit(sm, t)

  and check_unop op e =
    let se = expr_to_sexpr e in
    let t = sexpr_to_type se in
    (match op with
        Neg when t = Int -> SUnop(op, se, Int)
      | Not when t = Bool -> SUnop(op, se, Bool)
      | _ -> raise (Failure ("illegal unary operator " ^ string_of_uop op ^
          string_of_typ t ^ " in " ^ string_of_expr e)))
          
  and check_assign var e =
    let lvaluet = type_of_identifier var in
    let se = expr_to_sexpr e in
    let rvaluet = sexpr_to_type se in
    let err = (Failure("Illegal assignment" ^ string_of_typ lvaluet ^ " = " ^
      string_of_typ rvaluet ^ " in " ^ string_of_expr e)) in
    let _ = (match lvaluet with
      Matrix(lt,le1,le2) -> (match rvaluet with
        Matrix(rt,re1,re2) -> if rt = lt && re1 = le1 && re2 = le2 then lvaluet else raise err
      | _ -> raise err
      )
    | _ -> if lvaluet = rvaluet then lvaluet else raise err
    ) in
    SAssign(var, se, lvaluet)

  and stmt_to_sstmt = (function
      Block sl              -> (check_block sl)
    | Expr e                -> (check_expr e)
    | Return e              -> (check_return e)
    | If(e, s1, s2)         -> (check_if e s1 s2)
    | While(e, s)           -> (check_while e s)
    | For(e1,e2,e3,s)       -> (check_for e1 e2 e3 s)
  )


  and check_block sl =
    let rec helper = (function
        (*Return _ :: a when a != [] -> raise (Failure "nothing may follow a return")*)
      | hd :: tl                   -> (stmt_to_sstmt hd) :: (helper tl)
      | []                         -> []
    )
    in
    let ssl = helper sl in
    SBlock(ssl)

  and check_expr e =
    let se = expr_to_sexpr e in
    let t = sexpr_to_type se in
    SExpr(se,t)

  and check_return e =
    let se = expr_to_sexpr e in
    let t = sexpr_to_type se in
    if t = func.typ then SReturn(se)
    else raise (Failure ("return gives " ^ string_of_typ t ^ " expected " ^
                           string_of_typ func.typ ^ " in " ^ string_of_expr e))

  and check_if e s1 s2 =
    let se = expr_to_sexpr e in
    let t = sexpr_to_type se in
    let ss1 = stmt_to_sstmt s1 in
    let ss2 = stmt_to_sstmt s2 in
    if t = Bool then SIf(se, ss1, ss2)
    else raise (Failure ("expected Boolean expression in " ^ string_of_expr e))

  and check_while e s =
    let se = expr_to_sexpr e in
    let t = sexpr_to_type se in
    let ss = stmt_to_sstmt s in
    if t = Bool then SWhile(se, ss)
    else raise (Failure ("expected Boolean expression in " ^ string_of_expr e))

  and convert_lib_fdecl_to_sfdecl =
   
    (* Library functions *) 
    let built_in_decls =
        (StringMap.add "printA" [Int]) in built_in_decls

  and check_for e1 e2 e3 s =
    let se1 = expr_to_sexpr e1 in
    let se2 = expr_to_sexpr e2 in
    let se3 = expr_to_sexpr e3 in
    let t = sexpr_to_type se2 in
    let ss = stmt_to_sstmt s in
    if t = Bool then SFor(se1, se2, se3, ss)
    else raise (Failure ("expected Boolean expression in " ^ string_of_expr e2))

  and sexpr_to_type sexpr = match sexpr with
      SLiteral(_, typ)                 -> typ
    | SStringLit(_, typ)               -> typ
    | SBoolLit(_, typ)                 -> typ
    | SMatrixLit(_, typ)               -> typ
    | SPixelLit(_, _, _, _, typ)       -> typ
    | SBinop(_, _, _, typ)             -> typ
    | SUnop(_, _, typ)                 -> typ
    | SId(_, typ)                      -> typ
    | SAssign(_, _, typ)               -> typ
    | SAddass(_, _,typ)                -> typ
    | SCrop(_,_,_,_,_,typ)             -> typ
    | SCall(_,_,typ)                   -> typ
    | SAccess(_,_,typ)                 -> typ
    | SNoexpr                          -> Void

  in


  {
    styp = func.typ;
    sfname = func.fname;
    sformals = func.formals;
    slocals = func.locals;
    sbody = List.map stmt_to_sstmt func.body;
  }



let check (globals, functions) =
  let _ = report_duplicate (fun n -> "duplicate global " ^ n) (List.map snd globals) in
  let _ = check_binds (fun n -> "illegal void global" ^ n) globals in
  let built_in_decls =  StringMap.add "print"
    { typ = Void; fname = "print"; formals = [(Int, "s")];
      locals = []; body = [] } (StringMap.singleton "prints"
     { typ = Void; fname = "print"; formals = [(String,"s")];
       locals = []; body =  []  })
  in
  let check_functions m fdecl =
    if StringMap.mem fdecl.fname m then
      raise (Failure ("duplicate function " ^ fdecl.fname))
    else if StringMap.mem fdecl.fname built_in_decls then
      raise (Failure ("reserved function " ^ fdecl.fname))
    else StringMap.add fdecl.fname fdecl m
  in
  let fdecls = List.fold_left check_functions built_in_decls functions in
  let _ = try StringMap.find "main" fdecls
  with Not_found -> raise(Failure("no main function")) in
  let sfunctions = List.map (check_function globals fdecls) functions in
  (globals, sfunctions)

