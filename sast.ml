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

type sfunc_decl = {
  styp : typ;
  sfname : string;
  sformals : bind list;
  slocals : bind list;
  sbody : sstmt list;
}
