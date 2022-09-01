
(* The type of tokens. *)

type token = 
  | TIMES
  | THEN
  | SND
  | SETREF
  | SET
  | SEMICOLON
  | RPAREN
  | RBRACE
  | PROC
  | PLUS
  | PAIR
  | OF
  | NODE
  | NEWREF
  | MINUS
  | LPAREN
  | LETREC
  | LET
  | LBRACE
  | ISZERO
  | INT of (int)
  | IN
  | IF
  | ID of (string)
  | FST
  | EQUALS
  | EOF
  | END
  | EMPTYTREE
  | ELSE
  | DIVIDED
  | DEREF
  | DEBUG
  | COMMA
  | CASET
  | BEGIN
  | ARROW

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr)
