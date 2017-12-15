open Ast

type sexpr = 
  SLiteral of int * typ
  | SStringLit of string * typ
  | SBoolLit of bool * typ
  | SMatrixLit of sexpr list list * typ
  | SPixelLit of int * int * int * int * typ
  | SId of string * typ
  | SBinop of sexpr * op * sexpr * typ
  | SUnop of uop * sexpr * typ
  | SAssign of string * sexpr * typ
  | SAddass of string * sexpr * typ
  | SCall of string * sexpr list * typ
  | SAccess of string * sexpr * typ
  | SCrop of string * sexpr * sexpr * sexpr * sexpr * typ
  | SNoexpr

type sstmt =
    SBlock of sstmt list
  | SExpr of sexpr * typ
  | SReturn of sexpr
  | SIf of sexpr * sstmt * sstmt
  | SFor of sexpr * sexpr * sexpr * sstmt
  | SWhile of sexpr * sstmt

  (* Pretty-printing functions *)

let rec string_of_sexpr = function
SLiteral(l, _) -> string_of_int l
| SBoolLit(true, _) -> "true"
| SBoolLit(false, _) -> "false"
| SMatrixLit(e1, _) -> "TODO"
| SPixelLit(v1,v2,v3,v4,_) -> "(" ^ string_of_int v1 ^ "," ^ string_of_int v2 ^ "," ^ string_of_int v3 ^ "," ^ string_of_int v4 ^ ")"
| SMatrixLit(m,_) -> "(" ^ "matrix " ^ ")"
| SStringLit(s,_) -> s
| SId(s,_) -> s
| SBinop(e1, o, e2, _) -> string_of_sexpr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_sexpr e2
| SUnop(o, e, _) -> string_of_uop o ^ string_of_sexpr e
| SAssign(v, e, _) -> v ^ " = " ^ string_of_sexpr e
| SCall(f, el, _) ->
  f ^ "(" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
| SAccess(v, e, _) -> v ^ "[" ^ string_of_sexpr e ^ "]"
| SCrop(v, e1, e2, e3, e4, _) -> v ^ "<" ^ string_of_sexpr e1 ^ ":" ^ string_of_sexpr e2 ^ ", " ^ string_of_sexpr e3 ^ ":" ^ string_of_sexpr e4 ^ ">"
| SNoexpr -> ""

let rec string_of_sstmt = function
SBlock(stmts) ->
  "{\n" ^ String.concat "" (List.map string_of_sstmt stmts) ^ "}\n"
| SExpr(expr,_) -> string_of_sexpr expr ^ ";\n";
| SReturn(expr) -> "return " ^ string_of_sexpr expr ^ ";\n";
| SIf(e, s, SBlock([])) -> "if (" ^ string_of_sexpr e ^ ")\n" ^ string_of_sstmt s
| SIf(e, s1, s2) ->  "if (" ^ string_of_sexpr e ^ ")\n" ^
  string_of_sstmt s1 ^ "else\n" ^ string_of_sstmt s2
| SFor(e1, e2, e3, s) ->
  "for (" ^ string_of_sexpr e1  ^ " ; " ^ string_of_sexpr e2 ^ " ; " ^
  string_of_sexpr e3  ^ ") " ^ string_of_sstmt s
| SWhile(e, s) -> "while (" ^ string_of_sexpr e ^ ") " ^ string_of_sstmt s

(* 
let sstring_of_vinit (s, e, _) = s ^ " = " ^ string_of_sexpr e ^ ";\n"

let sstring_of_fdecl fdecl =
  let type_map = List.map fst fdecl.formals
  string_of_typ fdecl.typ ^ " " ^
  fdecl.fname ^ "(" ^ String.concat ", " ^ List.map string_of_typ type_map ^ ") {\n" ^ 
  String.concat "" (List.map string_of_sstmt fdecl.body) ^ "}" ^
  "}\n Locals:\n" ^ String.concat " " (List.map (fun (f, s) -> "name: " ^ f ^ " type: " ^ sstring_of_typ s ^"\n")  fdecl.slocals) ^    "\nParams:\n" ^ String.concat " " (List.map (fun (f, s) -> "name: " ^ f ^ " type: " ^ sstring_of_typ s ^"\n")  fdecl.sformals)


let sstring_of_program (vars, funcs) =
  String.concat "" (List.map string_of_vinit vars) ^ "\n" ^
  String.concat "\n" (List.map string_of_fdecl funcs) *)
