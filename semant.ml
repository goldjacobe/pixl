(* Semantic checking for the PIXL compiler *)

open Ast

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

  (* Raise an exception of the given rvalue type cannot be assigned to
     the given lvalue type *)
  let check_assign var e env err =
    let lvaluet = type_of_identifier var in
    let (se, env) = expr_to_sexpr e env in
    let rvaluet = sexpr_to_type se in
    let _ = (match lvaluet with
      Matrix(lt,le1,le2) -> (match rvaluet with
        Matrix(rt,re1,re2) -> if rt = lt && re1 = le1 && re2 = le2 then lvaluet else raise err
      | _ -> raise err
      )
    | _ -> if lvaluet = rvaluet then lvaluet else raise err
    ) in
    SAssign(var, se, lvaluet), env
  in

  let check_binop e1 op e2 env =
    let (se1, env) = expr_to_sexpr e1 env in
    let (se2, env) = expr_to_sexpr e2 env in
    let typ1 = sexpr_to_type se1 in
    let typ2 = sexpr_to_type se2 in
    (match op with
      Add | Sub | Mult | Div when t1 = Int && t2 = Int -> SBinop(se1,op,se2,Int), env
      | Equal | Neq when t1 = t2 -> SBinop(se1,op,se2,Bool), env
      | Less | Leq | Greater | Geq when t1 = Int && t2 = Int -> SBinop(se1,op,se2,Int), env
      | And | Or when t1 = Bool && t2 = Bool -> SBinop(se1,op,se2,Bool), env
      | Add when t1 = String && t2 = String -> SBinop(se1,op,se2,String), env
      | Add when t1 = Pixel && t2 = Pixel -> SBinop(se1,op,se2,Pixel), env
      | _ -> raise (Failure ("illegal binary operator " ^
          string_of_typ t1 ^ " " ^ string_of_op op ^ " " ^
          string_of_typ t2 ^ " in " ^ string_of_expr e))
    )
  in

  let check_unop op e env =
    let (se, env) = expr_to_sexpr e env in
    let t = sexpr_to_type se in
    (match op with
        Neg when t = Int -> SUnop(op, se, Int), env
      | Not when t = Bool -> SUnop(op, se, Bool), env
      | _ -> raise (Failure ("illegal unary operator " ^ string_of_uop op ^
          string_of_typ t ^ " in " ^ string_of_expr ex)))
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

    let sexpr_to_type sexpr = match sexpr with
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
    in

    (* Return the type of an expression or throw an exception *)
    let rec expr_to_sexpr e env = match e with
        Literal x           -> SLiteral(x, Int), env
      | BoolLit b           -> SBoolLit(b, Bool), env
      | PixelLit p          -> SPixelLit(p, Pixel), env
      | MatrixLit m -> (match m with
        [] -> SMatrixLit((Int, Literal(0), Literal(1)), Matrix), env)
        | [[]] -> SMatrixLit((Int, Literal(1), Literal(0)), Matrix), env)
        | (x::y)::z -> let eq = check_if_equal m
          in
        (match eq with
          | true -> SMatrixLit((Int, Literal(List.length z) + 1, Literal(List.length y) + 1, Matrix), env)
          | false -> raise (Failure ("Matrix has lists of uneven length"))
        ))
      | Id s -> type_of_identifier s
      | StringLit s         -> SStringLit(s, String), env
      | Access(v,e)         -> SLiteral(s, Int), env
      | Binop(e1, op, e2)   -> (check_binop e1 op e2 env)
      | Unop(op, e)         -> (check_unop op e env)
      | Noexpr -> Void
      | Assign(var, e) as ex -> check_assign var e env (Failure (
        "illegal assignment " ^ string_of_typ lt ^ " = " ^ string_of_typ rt ^
        " in " ^ string_of_expr ex))
      | Call(fname, actuals) as call -> let fd = function_decl fname in
         if List.length actuals != List.length fd.formals then
           raise (Failure ("expecting " ^ string_of_int
             (List.length fd.formals) ^ " arguments in " ^ string_of_expr call))
         else
           List.iter2 (fun (ft, _) e -> let et = expr e in
              ignore (check_assign ft et
                (Failure ("illegal actual argument found " ^ string_of_typ et ^
                " expected " ^ string_of_typ ft ^ " in " ^ string_of_expr e))))
             fd.formals actuals;
           fd.typ
    in

    let check_bool_expr e = if expr e != Bool
     then raise (Failure ("expected Boolean expression in " ^ string_of_expr e))
     else () in

    (* Verify a statement or throw an exception *)
    let rec stmt = function
        Block sl -> let rec check_block = function
          [Return _ as s] -> stmt s
        | Return _ :: _ -> raise (Failure "nothing may follow a return")
        | Block sl :: ss -> check_block (sl @ ss)
        | s :: ss -> stmt s ; check_block ss
        | [] -> ()
        in check_block sl
      | Expr e -> ignore (expr e)
      | Return e -> let t = expr e in if t = func.typ then () else
         raise (Failure ("return gives " ^ string_of_typ t ^ " expected " ^
                         string_of_typ func.typ ^ " in " ^ string_of_expr e))

      | If(p, b1, b2) -> check_bool_expr p; stmt b1; stmt b2
      | For(e1, e2, e3, st) -> ignore (expr e1); check_bool_expr e2;
                               ignore (expr e3); stmt st
      | While(p, s) -> check_bool_expr p; stmt s
    in

    stmt (Block func.body)

  in
  List.iter check_function functions
