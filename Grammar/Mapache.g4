grammar Mapache;

/*
 * Parser Rules
 */
 
 mapache                : program+ EOF ;
 program                : PROGRAM bloqueprogram;
 bloqueprogram          : OPEN_CURLY /*bloque1*/ bloque2 bloque3 CLOSE_CURLY;
 //bloque1              : funcion bloque1;
 bloque2                : variable bloque2;
 bloque3                : estatuto bloque3;
 //nose                 : ;

asignacion          : ID OPEN_BRACKET exp CLOSE_BRACKET ASSIGN expresion;
condicion           : IF OPEN_PAREN expresion CLOSE_PAREN bloque (ELSE bloque)?;
variable            : VAR ID (OPEN_BRACKET CONST_I CLOSE_BRACKET)? COLON tipo;
funcion             : FUNC ID OPEN_PAREN (ID COLON tipo (COMMA ID COLON tipo)*)? CLOSE_PAREN ARROW (VOID | tipo) bloque;
bloque              : OPEN_CURLY estatuto* CLOSE_CURLY;
estatuto            : (asignacion | condicion | imprimir | ciclo | funcion );
expresion           : exp ((LESS_THAN | GREATER_THAN | EQUAL | NOT_EQUAL | AND | OR) exp)?;
exp                 : termino ((PLUS | MINUS) termino)? ;
termino             : factor ((MULTIPLY | DIVISION) factor)?;
// we can change all the factors to this single factor:
//factor              : (OPEN_PAREN exp CLOSE_PAREN | (PLUS | MINUS) const | ID (OPEN_BRACKET exp CLOSE_BRACKET | OPEN_PAREN exp (COMMA exp)* CLOSE_PAREN)?);
factor              : (factor1 | factor2 | factor3);
factor1             : OPEN_PAREN exp CLOSE_PAREN ;
factor2             : (PLUS | MINUS) cte ;
factor3             : ID (factor31 | factor32)? ;
factor31            : OPEN_BRACKET exp CLOSE_BRACKET ;
factor32            : OPEN_PAREN exp (COMMA exp)* CLOSE_PAREN;
ciclo               : (cicloWhile | cicloFor);
cicloWhile          : WHILE expresion bloque;
cicloFor            : FOR ID IN exp DOTS exp BY exp bloque;
imprimir            : OPEN_PAREN (exp | ) CLOSE_PAREN;
tipo                : INT | FLOAT | BOOL | CHAR;
cte               : CONST_B | CONST_C | CONST_F | CONST_I;

 /*
 * Lexer Rules
 */

fragment A          : ('A'|'a') ;
fragment B          : ('B'|'b') ;
fragment C          : ('C'|'c') ;
fragment D          : ('D'|'d') ;
fragment E          : ('E'|'e') ;
fragment F          : ('F'|'f') ;
fragment G          : ('G'|'g') ;
fragment H          : ('H'|'h') ;
fragment I          : ('I'|'i') ;
fragment J          : ('J'|'j') ;
fragment K          : ('K'|'k') ;
fragment L          : ('L'|'l') ;
fragment M          : ('M'|'m') ;
fragment N          : ('N'|'n') ;
fragment O          : ('O'|'o') ;
fragment P          : ('P'|'p') ;
fragment Q          : ('Q'|'q') ;
fragment R          : ('R'|'r') ;
fragment S          : ('S'|'s') ;
fragment T          : ('T'|'t') ;
fragment U          : ('U'|'u') ;
fragment V          : ('V'|'v') ;
fragment W          : ('W'|'w') ;
fragment X          : ('X'|'x') ;
fragment Y          : ('Y'|'y') ;
fragment Z          : ('Z'|'z') ;

fragment QUOTE      : ('"') ;
fragment APOS       : ('\'') ;
fragment SIGN       : ('+'|'-') ;
fragment DIGIT      : ('0'..'9');

fragment LOWERCASE  : [a-z] ;
fragment UPPERCASE  : [A-Z] ;


PROGRAM             : P R O G R A M ;
INT                 : I N T ;
CHAR                : C H A R ;
FLOAT               : F L O A T ;
BOOL                : B O O L ;
VOID                : V O I D ;

FUNC                : F U N C ;
RETURN              : R E T U R N ;
VAR                 : V A R ;
PRINT               : P R I N T ;

IF                  : I F ;
ELSE                : E L S E ;
WHILE               : W H I L E ;
FOR                 : F O R ;
IN                  : I N ;
DOTS                : ('...') ;
BY                  : B Y ;

PLUS                : ('+') ;
MINUS               : ('-') ;     
MULTIPLY            : ('*') ;
DIVISION            : ('/') ;

ASSIGN              : ('=') ;
EQUAL               : ('==') ;
NOT                 : ('!') ;         
NOT_EQUAL           : ('!=') ;
LESS_THAN           : ('<') ;
GREATER_THAN        : ('>') ;
AND                 : ('&&');
OR                  : ('||');

OPEN_BRACKET        : ('[') ;
CLOSE_BRACKET       : (']') ;
OPEN_PAREN          : ('(') ;
CLOSE_PAREN         : (')') ;
OPEN_CURLY          : ('{') ;
CLOSE_CURLY         : ('}') ;

COMMA               : (',') ;
COLON               : (':') ;
DOT                 : ('.') ;
SEMICOLON           : (';') ;

ARROW               : ('->') ;

TRUE                : T R U E ;
FALSE               : F A L S E ;
LETRERO             : QUOTE .*? QUOTE;
CONST_I             : DIGIT+;
CONST_F             : DIGIT+ DOT DIGIT+;
CONST_B             : (TRUE|FALSE) ;
CONST_C             : APOS [A-Za-z0-9_] APOS; // to do

ID                  : [A-Za-z][A-Za-z0-9_]*;

TEXT                : ('['|'(') .*? (']'|')');

WS : [ \t\r\n]+ -> skip ;