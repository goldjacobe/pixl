open Ast

type sexpr = 
  SLiteral of int * typ
  | SStringLit of string * typ
  | SBoolLit of bool * typ
  | SMatrixLit of sexpr list list * typ
  | SPixelLit of sexpr * sexpr * sexpr * sexpr * typ
  | SId of string * typ
  | SBinop of sexpr * op * sexpr * typ
  | SUnop of uop * sexpr * typ
  | SAssign of string * sexpr * typ
  | SAssignp of string * field * sexpr * typ
  | SAssignm of string * sexpr * sexpr * sexpr * typ
  | SCall of string * sexpr list * typ
  | SAccess of string * field * typ
  | SMatrixAccess of string * sexpr * sexpr * typ
  | SCrop of string * sexpr * sexpr * sexpr * sexpr * typ
  | SNoexpr
  | SRows of string
  | SCols of string

type sstmt =
    SBlock of sstmt list
  | SExpr of sexpr * typ 
  | SReturn of sexpr
  | SIf of sexpr * sstmt * sstmt
  | SFor of sexpr * sexpr * sexpr * sstmt
  | SWhile of sexpr * sstmt
  | SEFor of typ * string * string * sstmt

type sfunc_decl = {
    styp : typ;
    sfname : string;
    sformals : bind list;
    slocals : bind list;
    sbody : sstmt list;
}

  (* Pretty-printing functions *)

let rec string_of_sexpr = function
SLiteral(l, _) -> string_of_int l
| SBoolLit(true, _) -> "true"
| SBoolLit(false, _) -> "false"
| SMatrixLit(ll, _) -> "[" ^ String.concat "," (List.map string_of_sexpr (List.concat ll)) ^ "]"
| SPixelLit(v1,v2,v3,v4, _) -> "(" ^ string_of_sexpr v1 ^ "," ^ string_of_sexpr v2 ^ "," ^ string_of_sexpr v3 ^ "," ^ string_of_sexpr v4 ^ ")"
| SStringLit(s, _) -> s
| SId(s, _) -> s
| SBinop(e1, o, e2, _) -> string_of_sexpr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_sexpr e2
| SUnop(o, e, _) -> string_of_uop o ^ string_of_sexpr e
| SAssign(v, e, _) -> v ^ " = " ^ string_of_sexpr e
| SCall(f, el, _) ->
  f ^ "(" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
| SAccess(v, e, _) -> v ^ "." ^ string_of_field e 
| SCrop(v, e1, e2, e3, e4, _) -> v ^ "<" ^ string_of_sexpr e1 ^ ":" ^ string_of_sexpr e2 ^ ", " ^ string_of_sexpr e3 ^ ":" ^ string_of_sexpr e4 ^ ">"
| SNoexpr -> ""

let rec string_of_sstmt = function
SBlock(stmts) ->
  "{\n" ^ String.concat "" (List.map string_of_sstmt stmts) ^ "}\n"
| SExpr(expr, _) -> string_of_sexpr expr ^ ";\n";
| SReturn(expr) -> "return " ^ string_of_sexpr expr ^ ";\n";
| SIf(e, s, SBlock([])) -> "if (" ^ string_of_sexpr e ^ ")\n" ^ string_of_sstmt s
| SIf(e, s1, s2) ->  "if (" ^ string_of_sexpr e ^ ")\n" ^
  string_of_sstmt s1 ^ "else\n" ^ string_of_sstmt s2
| SFor(e1, e2, e3, s) ->
  "for (" ^ string_of_sexpr e1  ^ " ; " ^ string_of_sexpr e2 ^ " ; " ^
  string_of_sexpr e3  ^ ") " ^ string_of_sstmt s
| SWhile(e, s) -> "while (" ^ string_of_sexpr e ^ ") " ^ string_of_sstmt s

