grammar Mapache;

/*
 * Parser Rules
 */
 
mapache     : program+ EOF ;
program     : MAPACHE bloque;
asignacion  : ID (OPEN_BRACKET exp CLOSE_BRACKET)? ASSIGN expresion SEMICOLON;
llamada     : ID OPEN_PAREN (expresion (COMMA expresion)*)? CLOSE_PAREN ;
condicion   : IF OPEN_PAREN expresion CLOSE_PAREN condicionLista bloque (ELSE condicionElse bloque)? condicionTermina;
variable    : VAR ID (OPEN_BRACKET CONST_I CLOSE_BRACKET)? COLON tipo SEMICOLON;
funcion     : FUNC ID OPEN_PAREN (ID COLON tipo (COMMA ID COLON tipo)*)? CLOSE_PAREN ARROW (VOID | tipo) bloquefunc;
bloque      : OPEN_CURLY estatuto* CLOSE_CURLY;
bloquefunc  : OPEN_CURLY estatuto* (RETURN expresion)? CLOSE_CURLY;
estatuto    : (variable | asignacion | condicion | imprimir | ciclo | funcion | (llamada SEMICOLON) );
expresion   : exp ((LESS_THAN | GREATER_THAN | EQUAL | NOT_EQUAL | AND | OR) exp)?;
exp         : termino ((PLUS | MINUS) termino)? ;
termino     : factor ((MULTIPLY | DIVISION) factor)?;
factor      : (OPEN_PAREN exp CLOSE_PAREN) | vector | cte | llamada | ID;
vector      : ID OPEN_BRACKET exp CLOSE_BRACKET ;
ciclo       : (cicloWhile | cicloFor);
cicloWhile  : WHILE cicloInicia expresion cicloListo bloque cicloTermina;
cicloFor    : FOR ID IN exp DOTS exp BY exp bloque;
imprimir    : PRINT OPEN_PAREN (TEXT | exp ) CLOSE_PAREN SEMICOLON;
tipo        : INT | FLOAT | BOOL | CHAR;
cte         : CONST_B | CONST_C | ((MINUS)? CONST_F) | ((MINUS)? CONST_I);


condicionLista      : ;
condicionTermina    : ;
condicionElse       : ;

cicloInicia         : ;
cicloListo          : ;
cicloTermina        : ;





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
fragment DIGIT      : ('0'..'9');

fragment LOWERCASE  : [a-z] ;
fragment UPPERCASE  : [A-Z] ;


MAPACHE             : M A P A C H E ;
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
TEXT                : QUOTE .*? QUOTE;
CONST_I             : DIGIT+;
CONST_F             : DIGIT+ DOT DIGIT+;
CONST_B             : (TRUE|FALSE) ;
CONST_C             : APOS [A-Za-z0-9_] APOS; // to do

ID                  : [A-Za-z][A-Za-z0-9_]*;

WS                  : [ \t\r\n]+ -> skip ;