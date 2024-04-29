package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
Punto=\\.
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
"=" | "+" | "-" | "*" | "/" {lexeme=yytext(); return Operador;}
int | if | else | for | while {lexeme=yytext(); return Palabra_reservada;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
{D}+"."{D}+ {lexeme=yytext(); return Real;}
{D}+ {lexeme=yytext(); return Entero;}
 . {return ERROR;}