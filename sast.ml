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
  | SWhile of sexpr * stmt
  | SEFor of typ * string * string * sstmt


  (* Pretty-printing functions *)

let rec string_of_sexpr = function
SLiteral(l) -> string_of_int l
| SBoolLit(true) -> "true"
| SBoolLit(false) -> "false"
| SMatrixLit(e1) -> "TODO"
| SPixelLit(v1,v2,v3,v4) -> "(" ^ string_of_int v1 ^ "," ^ string_of_int v2 ^ "," ^ string_of_int v3 ^ "," ^ string_of_int v4 ^ ")"
| SMatrixLit(m) -> "(" ^ "matrix " ^ ")"
| SStringLit(s) -> s
| SId(s) -> s
| SBinop(e1, o, e2) ->
  string_of_expr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_expr e2
| SUnop(o, e) -> string_of_uop o ^ string_of_expr e
| SAssign(v, e) -> v ^ " = " ^ string_of_expr e
| SCall(f, el) ->
  f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
| SAccess(v, e) -> v ^ "[" ^ string_of_expr e ^ "]"
| SCrop(v, e1, e2, e3, e4) -> v ^ "<" ^ string_of_expr e1 ^ ":" ^ string_of_expr e2 ^ ", " ^ string_of_expr e3 ^ ":" ^ string_of_expr e4 ^ ">"
| SNoexpr -> ""

let rec string_of_sstmt = function
SBlock(stmts) ->
  "{\n" ^ String.concat "" (List.map string_of_stmt stmts) ^ "}\n"
| SExpr(expr) -> string_of_expr expr ^ ";\n";
| SReturn(expr) -> "return " ^ string_of_expr expr ^ ";\n";
| SIf(e, s, Block([])) -> "if (" ^ string_of_expr e ^ ")\n" ^ string_of_stmt s
| SIf(e, s1, s2) ->  "if (" ^ string_of_expr e ^ ")\n" ^
  string_of_stmt s1 ^ "else\n" ^ string_of_stmt s2
| SFor(e1, e2, e3, s) ->
  "for (" ^ string_of_expr e1  ^ " ; " ^ string_of_expr e2 ^ " ; " ^
  string_of_expr e3  ^ ") " ^ string_of_stmt s
| SWhile(e, s) -> "while (" ^ string_of_expr e ^ ") " ^ string_of_stmt s


