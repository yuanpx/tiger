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

exp:
    | lvalue
    | NIL
    | L_BRACKET exp SEMICOLON exp R_BRACKET
    | INT
    | STR
    | MINUS exp
    | ID L_BRACKET after_func_call
    | exp PLUS exp
    | exp MINUS exp
    | exp MUL exp
    | exp DIV exp
    | exp EQU exp
    | exp LESS exp
    | exp MORE exp
    | exp NOT_EQU exp
    | exp LESS_EQU exp
    | exp MORE_EQU exp
    | exp ADD exp
    | exp OR exp
    | ID L_BIG_BRACE after_recoord 
    | lvalue ASSIGN exp
    | IF exp THEN exp after_if
    | WHILE exp do exp
    | FOR ID ASSIGN exp TO exp DO exp
    | break
    | LET decs IN  expseq END
    | L_BIG_BRACE expseq R_BIG_BRACE
    ;

after_if:
    | 
    | ELSE exp
    ;

after_record:
    | exp_assign_list R_BIG_BRACE
    | R_BIG_BRACE
    ;

exp_assign_list:
    | ID EQU exp
    | exp_assign_list , ID EQU exp
    ;


after_func_call:
    | R_BRACKET
    | func_param R_BRACKET
    ;
func_param:
    | exp
    | func_param , exp
    ;



%%
