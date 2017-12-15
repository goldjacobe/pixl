(* Semantic checking for the PIXL compiler *)

open Ast
open Sast

module StringMap = Map.Make(String)

(* Semantic checking of a program. Returns void if successful,
   throws an exception if something is wrong.

   Check each global variable, then check each function *)

let check (globals, functions) =

  (* Raise an exception if the given list has a duplicate *)
  let report_duplicate exceptf list =
    let rec helper = function
        n1 :: n2 :: _ when n1 = n2 -> raise (Failure (exceptf n1))
      | _ :: t -> helper t
      | [] -> ()
    in helper (List.sort compare list)
  in

  (* Raise an exception if a given binding is to a void type *)
  let check_not_void exceptf = function
      (Void, n) -> raise (Failure (exceptf n))
    | _ -> ()
  in

  let rec check_if_equal = function
    | [] | _::[]  -> true
    | h1::h2::[] -> List.length h1 = List.length h2
    | h1::h2::tl  -> check_if_equal (h1::[h2]) && check_if_equal (h2::tl)
  in

  (**** Checking Global Variables ****)

  List.iter (check_not_void (fun n -> "illegal void global " ^ n)) globals;

  report_duplicate (fun n -> "duplicate global " ^ n) (List.map snd globals);

  (**** Checking Functions ****)

  if List.mem "print" (List.map (fun fd -> fd.fname) functions)
  then raise (Failure ("function print may not be defined")) else ();

  report_duplicate (fun n -> "duplicate function " ^ n)
    (List.map (fun fd -> fd.fname) functions);

  (* Function declaration for a named function *)
  let built_in_decls =  StringMap.singleton "print"
    { typ = Void; fname = "print"; formals = [(Int, "s")];
      locals = []; body = [] }
  in

  let function_decls = List.fold_left (fun m fd -> StringMap.add fd.fname fd m)
                         built_in_decls functions
  in

  let function_decl s = try StringMap.find s function_decls
       with Not_found -> raise (Failure ("unrecognized function " ^ s))
  in

  let _ = function_decl "main" in (* Ensure "main" is defined *)

  let check_function func =

    List.iter (check_not_void (fun n -> "illegal void formal " ^ n ^
      " in " ^ func.fname)) func.formals;

    report_duplicate (fun n -> "duplicate formal " ^ n ^ " in " ^ func.fname)
      (List.map snd func.formals);

    List.iter (check_not_void (fun n -> "illegal void local " ^ n ^
      " in " ^ func.fname)) func.locals;

    report_duplicate (fun n -> "duplicate local " ^ n ^ " in " ^ func.fname)
      (List.map snd func.locals);

    (* Type of each variable (global, formal, or local *)
    let symbols = List.fold_left (fun m (t, n) -> StringMap.add n t m)
      StringMap.empty (globals @ func.formals @ func.locals )
    in

    let type_of_identifier s =
      try StringMap.find s symbols
      with Not_found -> raise (Failure ("undeclared identifier " ^ s))
    in

    (* Return the type of an expression or throw an exception *)
    let rec expr_to_sexpr e = match e with
    Literal x           -> SLiteral(x, Int)
  | BoolLit b           -> SBoolLit(b, Bool)
  | PixelLit(x1,x2,x3,x4)    -> SPixelLit(x1,x2,x3,x4, Pixel)
  | MatrixLit m         -> check_matrix m
  | Id s                -> SId(s, type_of_identifier s)
  | StringLit s         -> SStringLit(s, String)
  | Access(v,e)         -> (check_access v e)
  | Binop(e1, op, e2)   -> (check_binop e1 op e2)
  | Unop(op, e)         -> (check_unop op e)
  | Noexpr -> SNoexpr
  | Assign(var, e) as ex -> check_assign var e "Illegal assignment"
  (* | Call(fname, actuals) as call -> let fd = function_decl fname in
    if List.length actuals != List.length fd.formals then
      raise (Failure ("expecting " ^ string_of_int
        (List.length fd.formals) ^ " arguments in " ^ string_of_expr call))
    else
      List.iter2 (fun (ft, _) e ->
        let exp, _ = expr_to_sexpr e in
        let et = sexpr_to_type exp in
            ignore (check_assign ft et "illegal actual argument found ")) fd.formals actuals
      SCall(fname, actuals, fd.typ) *)

  and check_access var exp =
  let sexpr = expr_to_sexpr exp in
    if type_of_identifier var != sexpr_to_type sexpr then raise (Failure("Couldn't access - variable and expression are of different types!"))
    else SAccess(var, sexpr, sexpr_to_type sexpr)

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


      (* Raise an exception of the given rvalue type cannot be assigned to
     the given lvalue type *)
  and check_assign var e str =
    let lvaluet = type_of_identifier var in
    let se = expr_to_sexpr e in
    let rvaluet = sexpr_to_type se in
    let err = (Failure (
      str ^ string_of_typ lvaluet ^ " = " ^ string_of_typ rvaluet ^
      " in " ^ string_of_expr e)) in
    let _ = (match lvaluet with
      Matrix(lt,le1,le2) -> (match rvaluet with
        Matrix(rt,re1,re2) -> if rt = lt && re1 = le1 && re2 = le2 then lvaluet else raise err
      | _ -> raise err
      )
    | _ -> if lvaluet = rvaluet then lvaluet else raise err
    ) in
    SAssign(var, se, lvaluet)

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
    | SNoexpr                          -> Void

  and convert_stmt_to_sstmt stmt = match stmt with 
     Block sl               -> check_block sl
    | Expr e                -> (check_expr e)
    | Return e              -> check_return e
    | If(e, s1, s2)         -> check_bool_expr e s1 s2
    | While(e, s)           -> check_while e s
    | For(e1,e2,e3,st)      -> check_for e1 e2 e3 st

  and check_expr e = 
    let se = expr_to_sexpr e in
    let t = sexpr_to_type se in
      SExpr(se,t)

  and check_for e1 e2 e3 st = 
    let se1 = expr_to_sexpr e1 in
    let se2 = expr_to_sexpr e2 in
    let se3 = expr_to_sexpr e3 in
    let sst = convert_stmt_to_sstmt st in
      SFor(se1, se2, se3, sst)
  
  and check_while e s = 
      let se = expr_to_sexpr e in
      let sst = convert_stmt_to_sstmt s in
      SWhile(se,sst)

  and check_block = function
      [Return _ as s] -> convert_stmt_to_sstmt s
    | Return _ :: _ -> raise (Failure "nothing may follow a return")
    | Block sl :: ss -> check_block (sl @ ss)
    | s :: ss -> convert_stmt_to_sstmt s ; check_block ss
    | [] -> SBlock([])
  
  and check_return e =
    let t = sexpr_to_type(expr_to_sexpr e) in 
    if t = func.typ then SReturn(SNoexpr) else
    raise (Failure ("return gives " ^ string_of_typ t ^ " expected " ^
                    string_of_typ func.typ ^ " in " ^ string_of_expr e))

  and check_bool_expr e s1 s2 =
    let se = expr_to_sexpr e in
    let t = sexpr_to_type se in
    let ss1 = convert_stmt_to_sstmt s1 in
    let ss2 = convert_stmt_to_sstmt s2 in
    if t != Bool
      then raise (Failure ("expected Boolean expression in " ^ string_of_expr e))
    else SIf(se,ss1,ss2) 
    in
    (* Verify a statement or throw an exception *)

    ignore(convert_stmt_to_sstmt (Block func.body))

  in
  List.iter check_function functions
