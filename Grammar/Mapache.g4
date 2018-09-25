grammar Mapache;

/*
 * Parser Rules
 */
 
 mapache                : program+ EOF ;
 program                : ;

 /*
 * Lexer Rules
 */

 WS : [ \t\r\n]+ -> skip ;