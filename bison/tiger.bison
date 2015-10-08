%%
decs:
    | L_BIG_BRACE dec_array R_BIG_BRACE
    ;

dec_array:
    | dec_array dec
    ;

dec:
    | tydec
    | vardec
    | fundec
    ;

tydec:
    | TYPE ID EQU ty
    ;

ty:
    | type-id
    | L_BIG_BRACE tyfields R_BIG_BRACE
    | ARRAY OF ID
    ;

tyfields:
    |
    | ID COLON ID 
    | tyfields , ID COLON ID
    ;

vardec:
    | VAR ID after_var

after_var:
    | ASSIGN exp
    | SEMICOLON ID ASSIGN exp

funcdec:
    | FUNC ID L_BRACKET tyfields) after_func
    ;

after_func:
    | EQU exp
    | SEMICOLON ID EQU exp
    ;

lvalue:
    | ID
    | lvalue DOT ID
    | lvalue L_BRACE exp R_BRACE
    ;


%%
