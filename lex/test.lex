%{
	enum TOKEN
	{
		ADD = 1

	};
%}

%%
"+" { return ADD;}
.	{printf("other character %c\n", *yytext);}
%%

main(int argc, char **argv)
{

	int tok;
	while(tok = yylex())
	{
		printf("%d\n", tok);
	}
}
