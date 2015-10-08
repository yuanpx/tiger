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

%}

%%
"+"	{ return PLUS;}
.	{ return MINUS;}
%%

main(int argc, char **argv)
{
	int tok;
	while(tok = yylex())
	{
		printf("token:%s\n", g_token_str[tok]);
	}
}
