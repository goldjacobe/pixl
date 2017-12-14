open Ast


type sfdecl = {
    styp : typ;
    sfname : string;
    slocals : (string * datatype) list;
    sformals : (string * datatype) list;
    sbody : sstmt list; 
}