
(* The type of tokens. *)

type token = 
  | TOP
  | TIMES
  | THEN
  | SIZE
  | SETREF
  | SET
  | SEMICOLON
  | RPAREN
  | RBRACE
  | PUSH
  | PROC
  | POP
  | PLUS
  | NEWREF
  | MINUS
  | LPAREN
  | LETREC
  | LET
  | LBRACE
  | ISZERO
  | ISEMPTY
  | INT of (int)
  | IN
  | IF
  | ID of (string)
  | EQUALS
  | EOF
  | END
  | EMPTYSTACK
  | ELSE
  | DIVIDED
  | DEREF
  | DEBUG
  | COMMA
  | BEGIN

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr)
