%{
	enum TOKEN
	{
		NONE = 0,
		WHILE,
		FOR,
		TO,
		BREAK,
		LET,
		IN,
		END,
		FUNC,
		VAR,
		TYPE,
		ARRAY,
		IF,
		THEN,
		ELSE,
		DO,
		OF,
		NIL,
		COMMA,
		COLON,
		SEMICOLON,
		L_BRACKET,
		R_BRACKET,
		L_BRACE,
		R_BRACE,
		L_BIG_BRACE,
		R_BIG_BRACE,
		DOT,
		PLUS,
		MINUS,
		MUL,
		DIV,
		EQU,
		NOT_EQU,
		LESS,
		MORE,
		LESS_EQU,
		MORE_EQU,
		AND,
		OR,
		ASSIGN,
		ID,
		COMMENT,
		INT,
		STR
	};
const char * const g_token_str[] =
{
	"",
	"while",
	"for",
	"to",
	"break",
	"let",
	"in",
	"end",
	"function",
	"var",
	"type",
	"array",
	"if",
	"then",
	"else",
	"do",
	"of",
	"nil",
	",",
	":",
	";",
	"(",
	")",
	"[",
	"]",
	"{",
	"}",
	".",
	"+",
	"-",
	"*",
	"/",
	"=",
	"<>",
	"<",
	">",
	"<=",
	">=",
	"&",
	"|",
	":=",
	"id",
	"comment",
	"int",
	"string"	
};

#define MAX_STR_SIZE 1024
int g_int_val  = 0;
char g_str_val[MAX_STR_SIZE] = {0};

%}

%%
"while" {return WHILE;}
"for" {return FOR;}
"to" {return TO;}
"break" {return BREAK;}
"let" {return LET;}
"in" {return IN;}
"end" {return END;}
"function" {return FUNC;}
"var" {return VAR;}
"type" {return TYPE;}
"array" {return ARRAY;}
"if" {return IF;}
"then" {return THEN;}
"else" {return ELSE;}
"do" {return DO;}
"of" {return OF;}
"nil" {return NIL;}
"," {return COMMA;}
":" {return COLON;}
";" {return SEMICOLON;}
"(" {return L_BRACKET;}
")" {return R_BRACKET;}
"[" {return L_BRACE;}
"]" {return R_BRACE;}
"{" {return L_BIG_BRACE;}
"}" {return R_BIG_BRACE;}
"." {return DOT;}
"+" {return PLUS;}
"-" {return MINUS;}
"*" {return MUL;}
"/" {return DIV;}
"=" {return EQU;}
"<>" {return NOT_EQU;}
"<" {return LESS;}
">" {return MORE;}
"<=" {return LESS_EQU;}
">=" {return MORE_EQU;}
"&" {return AND;}
"|" {return OR;}
":=" {return ASSIGN;}
[a-zA-Z]+[a-zA-Z0-9_]*    { return ID; }
\".*\"    {strncpy(g_str_val, yytext, MAX_STR_SIZE - 1); return STR; }
[-]?[1-9][0-9]* { g_int_val = atoi(yytext); return INT;}
%%

main(int argc, char **argv)
{
	int tok;
	while(tok = yylex())
	{
		printf("token:%s\n", g_token_str[tok]);
        if (tok == INT)
        {
            printf("int:%d\n", g_int_val);
        }
        if (tok == STR)
        {
            printf("str:%s\n", g_str_val);         

        }
	}
}
