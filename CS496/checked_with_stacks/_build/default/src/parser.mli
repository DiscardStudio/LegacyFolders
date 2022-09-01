
(* The type of tokens. *)

type token = 
  | UNTUPLE
  | UNPAIR
  | UNITTYPE
  | TOP
  | TIMES
  | THEN
  | SND
  | SIZE
  | SETREF
  | SET
  | SEMICOLON
  | RPAREN
  | REFTYPE
  | RBRACE
  | RANGLE
  | PUSH
  | PROC
  | POP
  | PLUS
  | PAIR
  | NEWREF
  | MINUS
  | LPAREN
  | LETREC
  | LET
  | LBRACE
  | LANGLE
  | ISZERO
  | ISEMPTY
  | INTTYPE
  | INT of (int)
  | IN
  | IF
  | ID of (string)
  | FST
  | EQUALS
  | EOF
  | END
  | EMPTYSTACK
  | ELSE
  | DOT
  | DIVIDED
  | DEREF
  | DEBUG
  | COMMA
  | COLON
  | BOOLTYPE
  | BEGIN
  | ARROW

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr)
