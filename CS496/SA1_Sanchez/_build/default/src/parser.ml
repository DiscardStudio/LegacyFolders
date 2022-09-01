
module MenhirBasics = struct
  
  exception Error
  
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
    | INT of (
# 22 "src/parser.mly"
       (int)
# 32 "src/parser.ml"
  )
    | IN
    | IF
    | ID of (
# 23 "src/parser.mly"
       (string)
# 39 "src/parser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState105
  | MenhirState102
  | MenhirState100
  | MenhirState98
  | MenhirState97
  | MenhirState96
  | MenhirState95
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState89
  | MenhirState87
  | MenhirState85
  | MenhirState83
  | MenhirState81
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState74
  | MenhirState73
  | MenhirState71
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState64
  | MenhirState62
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState56
  | MenhirState55
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState49
  | MenhirState44
  | MenhirState43
  | MenhirState41
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState28
  | MenhirState22
  | MenhirState21
  | MenhirState20
  | MenhirState18
  | MenhirState16
  | MenhirState11
  | MenhirState9
  | MenhirState6
  | MenhirState4
  | MenhirState2
  | MenhirState0

# 8 "src/parser.mly"
  
open Ast

# 130 "src/parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 152 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv394)) : 'freshtv396)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv399 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv397 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 168 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)) : 'freshtv400)
    | _ ->
        _menhir_fail ()

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | DEBUG ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | DEREF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | EMPTYSTACK ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | ISEMPTY ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | ISZERO ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LETREC ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NEWREF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | POP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | PROC ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | PUSH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | SIZE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | TOP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | DEBUG ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | DEREF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | EMPTYSTACK ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | ISEMPTY ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | ISZERO ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LETREC ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NEWREF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | POP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | PROC ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | PUSH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | SIZE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | TOP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DEBUG ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DEREF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | EMPTYSTACK ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | ISEMPTY ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ISZERO ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LETREC ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NEWREF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | POP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | PROC ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | PUSH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SIZE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | TOP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | DEBUG ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | DEREF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | EMPTYSTACK ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | ISEMPTY ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | ISZERO ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LETREC ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NEWREF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | POP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | PROC ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | PUSH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | SIZE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | TOP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState52 | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState49 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | DEBUG ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | DEREF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | EMPTYSTACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | ISEMPTY ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | ISZERO ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LETREC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | NEWREF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | POP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | PROC ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | PUSH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | SIZE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | TOP ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv236)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 455 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv240)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _v : 'tv_expr = 
# 147 "src/parser.mly"
                                  ( Mul(e1,e2) )
# 471 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)) : 'freshtv244)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | PLUS | POP | PROC | PUSH | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | THEN | TOP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 145 "src/parser.mly"
                                 ( Add(e1,e2) )
# 491 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv248)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _v : 'tv_expr = 
# 148 "src/parser.mly"
                                    ( Div(e1,e2) )
# 507 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)) : 'freshtv252)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | PLUS | POP | PROC | PUSH | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | THEN | TOP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 146 "src/parser.mly"
                                  ( Sub(e1,e2) )
# 527 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv256)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState60 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 149 "src/parser.mly"
                                   ( Debug(e) )
# 558 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)) : 'freshtv260)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv262)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState62 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 156 "src/parser.mly"
                                      ( DeRef(e) )
# 591 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)) : 'freshtv266)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv268)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState64 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | DEBUG ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | DEREF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | EMPTYSTACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | ISEMPTY ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | ISZERO ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LETREC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | NEWREF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | POP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | PROC ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | PUSH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | SIZE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | TOP ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv270)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv272)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv275 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv273 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState66 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DEBUG ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DEREF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | EMPTYSTACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | ISEMPTY ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | ISZERO ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LETREC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | NEWREF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | POP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | PROC ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | PUSH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SIZE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | TOP ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv274)
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv276)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv279 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LET | LETREC | LPAREN | NEWREF | POP | PROC | PUSH | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | THEN | TOP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv277 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 158 "src/parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 761 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv280)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState69 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 164 "src/parser.mly"
                                         ( IsEmpty(e1) )
# 792 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv286)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState71 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 154 "src/parser.mly"
                                       ( IsZero(e) )
# 825 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)) : 'freshtv290)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv292)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv295 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 839 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv293 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 851 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState73 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | DEBUG ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | DEREF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EMPTYSTACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | ISEMPTY ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | ISZERO ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LETREC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | NEWREF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | POP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | PROC ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | PUSH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | SIZE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | TOP ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv294)
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv296)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv299 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 917 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LET | LETREC | LPAREN | NEWREF | POP | PROC | PUSH | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | THEN | TOP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv297 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 935 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 940 "src/parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 150 "src/parser.mly"
                                                    ( Let(x,e1,e2) )
# 945 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv300)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv303 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 957 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 961 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv301 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 973 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 977 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState76 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | DEBUG ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | DEREF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | EMPTYSTACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | ISEMPTY ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | ISZERO ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LETREC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | NEWREF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | POP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | PROC ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | PUSH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SIZE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | TOP ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv302)
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv304)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv307 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1043 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 1047 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LET | LETREC | LPAREN | NEWREF | POP | PROC | PUSH | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | THEN | TOP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv305 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1065 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 1069 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1074 "src/parser.ml"
            ))), (y : (
# 23 "src/parser.mly"
       (string)
# 1078 "src/parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 151 "src/parser.mly"
                                                                               ( Letrec(x,y,e1,e2) )
# 1083 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv308)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv313 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState79 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 168 "src/parser.mly"
                                      ( Sub(Int 0, e) )
# 1114 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)) : 'freshtv312)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv314)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv319 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState81 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv315 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 166 "src/parser.mly"
                               (e)
# 1179 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv320)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState83 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv321 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 153 "src/parser.mly"
                                           ( App(e1,e2) )
# 1220 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)) : 'freshtv324)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv326)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState85 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 155 "src/parser.mly"
                                       ( NewRef(e) )
# 1253 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)) : 'freshtv330)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv332)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState87 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv333 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 162 "src/parser.mly"
                                     ( Pop(e1) )
# 1286 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv338)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv343 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1300 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv341 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1316 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState89 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv339 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1324 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1330 "src/parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 152 "src/parser.mly"
                                                             ( Proc(x,e) )
# 1335 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv344)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv347 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv345 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState91 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | DEBUG ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | DEREF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | EMPTYSTACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | ISEMPTY ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | ISZERO ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LETREC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | NEWREF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | POP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | PROC ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | PUSH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | SIZE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | TOP ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv346)
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv348)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv353 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv351 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState93 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv349 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 161 "src/parser.mly"
                                                        ( Push(e1,e2) )
# 1438 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv354)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv357 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1452 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LET | LETREC | LPAREN | NEWREF | POP | PROC | PUSH | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | THEN | TOP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv355 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1470 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1475 "src/parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 159 "src/parser.mly"
                                    ( Set(x,e) )
# 1480 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv358)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState96 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | DEBUG ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | DEREF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | EMPTYSTACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | ISEMPTY ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ISZERO ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LETREC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | NEWREF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | POP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | PROC ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | PUSH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | SIZE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | TOP ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv360)
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv362)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv367 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv365 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState98 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv363 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 157 "src/parser.mly"
                                                          ( SetRef(e1,e2) )
# 1581 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)) : 'freshtv366)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv368)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv371 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState100 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv369 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 165 "src/parser.mly"
                                      ( Size(e1) )
# 1614 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)) : 'freshtv372)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv374)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv377 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState102 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 163 "src/parser.mly"
                                     ( Top(e1) )
# 1647 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)) : 'freshtv378)
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv380)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState105 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _v : (
# 81 "src/parser.mly"
       (Ast.expr)
# 1675 "src/parser.ml"
            ) = 
# 113 "src/parser.mly"
                 (  e )
# 1679 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 81 "src/parser.mly"
       (Ast.expr)
# 1687 "src/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 81 "src/parser.mly"
       (Ast.expr)
# 1695 "src/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 81 "src/parser.mly"
       (Ast.expr)
# 1703 "src/parser.ml"
            )) : (
# 81 "src/parser.mly"
       (Ast.expr)
# 1707 "src/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv382)) : 'freshtv384)) : 'freshtv386)) : 'freshtv388)) : 'freshtv390)
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | TIMES ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv392)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv231) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let _v : 'tv_exprs = let es = 
# 232 "<standard.mly>"
    ( xs )
# 1736 "src/parser.ml"
     in
    
# 172 "src/parser.mly"
                                            ( es )
# 1741 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv229) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exprs) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv227 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (es : 'tv_exprs)) = _menhir_stack in
        let _v : 'tv_expr = 
# 160 "src/parser.mly"
                             ( BeginEnd(es) )
# 1763 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)) : 'freshtv228)) : 'freshtv230)) : 'freshtv232)) : 'freshtv234)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv111 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv113 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv117 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1812 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv119 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv121 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv125 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1836 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv137 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1870 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 1874 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv139 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1883 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 1887 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv141 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1896 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 1900 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv143 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1909 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv145 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1918 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv147 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1927 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv153 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv155 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv157 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv173 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2051 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv197 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2060 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2064 "src/parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv207 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2093 "src/parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2107 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv220)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv102)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv98)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv94)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 2335 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv85 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2346 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | DEBUG ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | DEREF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | EMPTYSTACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | ISEMPTY ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | ISZERO ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LETREC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | NEWREF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | POP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | PROC ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | PUSH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | SIZE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | TOP ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv86)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv87 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2402 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)) : 'freshtv90)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv82)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv73 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 23 "src/parser.mly"
       (string)
# 2496 "src/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv69 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2507 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv65 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2517 "src/parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BEGIN ->
                        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | DEBUG ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | DEREF ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | EMPTYSTACK ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | ID _v ->
                        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
                    | IF ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | INT _v ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
                    | ISEMPTY ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | ISZERO ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | LET ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | LETREC ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | LPAREN ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | NEWREF ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | POP ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | PROC ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | PUSH ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | SET ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | SETREF ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | SIZE ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | TOP ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv66)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv67 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2573 "src/parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)) : 'freshtv70)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv71 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2584 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv75 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)) : 'freshtv78)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv62)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv58)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | DEBUG ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | DEREF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | EMPTYSTACK ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | ISEMPTY ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ISZERO ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LETREC ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | MINUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState21 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv56)
    | NEWREF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | POP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | PROC ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | PUSH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | SIZE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | TOP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 2846 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv47 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2857 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv43 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2867 "src/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 23 "src/parser.mly"
       (string)
# 2872 "src/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv39 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2883 "src/parser.ml"
                    ))) * (
# 23 "src/parser.mly"
       (string)
# 2887 "src/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQUALS ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv35 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2897 "src/parser.ml"
                        ))) * (
# 23 "src/parser.mly"
       (string)
# 2901 "src/parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | BEGIN ->
                            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | DEBUG ->
                            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | DEREF ->
                            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | EMPTYSTACK ->
                            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | ID _v ->
                            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
                        | IF ->
                            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | INT _v ->
                            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
                        | ISEMPTY ->
                            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | ISZERO ->
                            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | LET ->
                            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | LETREC ->
                            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | LPAREN ->
                            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | NEWREF ->
                            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | POP ->
                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | PROC ->
                            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | PUSH ->
                            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | SET ->
                            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | SETREF ->
                            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | SIZE ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | TOP ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv36)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv37 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2957 "src/parser.ml"
                        ))) * (
# 23 "src/parser.mly"
       (string)
# 2961 "src/parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)) : 'freshtv40)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv41 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2972 "src/parser.ml"
                    ))) * (
# 23 "src/parser.mly"
       (string)
# 2976 "src/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)) : 'freshtv44)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv45 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2987 "src/parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)) : 'freshtv48)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv49 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2998 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)) : 'freshtv52)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 3022 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3033 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | DEBUG ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | DEREF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | EMPTYSTACK ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | ISEMPTY ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | ISZERO ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LETREC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | NEWREF ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | POP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | PROC ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | PUSH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | SIZE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | TOP ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3089 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv24)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "src/parser.mly"
       (int)
# 3232 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 22 "src/parser.mly"
       (int)
# 3242 "src/parser.ml"
    )) : (
# 22 "src/parser.mly"
       (int)
# 3246 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 142 "src/parser.mly"
              ( Int i )
# 3251 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | DEBUG ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | DEREF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | EMPTYSTACK ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | ISEMPTY ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ISZERO ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LETREC ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NEWREF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | POP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | PROC ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | PUSH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | SIZE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | TOP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "src/parser.mly"
       (string)
# 3309 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 23 "src/parser.mly"
       (string)
# 3319 "src/parser.ml"
    )) : (
# 23 "src/parser.mly"
       (string)
# 3323 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 143 "src/parser.mly"
             ( Var x )
# 3328 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_expr = 
# 144 "src/parser.mly"
                 ( EmptyStack )
# 3341 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv14)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DEBUG ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DEREF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | EMPTYSTACK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | ISEMPTY ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ISZERO ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LETREC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NEWREF ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | POP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PROC ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PUSH ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SIZE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | TOP ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | DEBUG ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | DEREF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | EMPTYSTACK ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | ISEMPTY ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | ISZERO ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LETREC ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NEWREF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | POP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | PROC ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | PUSH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | SIZE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | TOP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState44 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 3526 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 81 "src/parser.mly"
       (Ast.expr)
# 3549 "src/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEBUG ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEREF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EMPTYSTACK ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ISEMPTY ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ISZERO ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LETREC ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEWREF ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | POP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PROC ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PUSH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SIZE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TOP ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 3611 "src/parser.ml"
