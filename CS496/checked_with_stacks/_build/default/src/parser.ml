
module MenhirBasics = struct
  
  exception Error
  
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
    | INT of (
# 22 "src/parser.mly"
       (int)
# 41 "src/parser.ml"
  )
    | IN
    | IF
    | ID of (
# 23 "src/parser.mly"
       (string)
# 48 "src/parser.ml"
  )
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
  | MenhirState194
  | MenhirState192
  | MenhirState191
  | MenhirState190
  | MenhirState189
  | MenhirState188
  | MenhirState187
  | MenhirState185
  | MenhirState183
  | MenhirState181
  | MenhirState179
  | MenhirState178
  | MenhirState177
  | MenhirState176
  | MenhirState174
  | MenhirState173
  | MenhirState172
  | MenhirState170
  | MenhirState168
  | MenhirState166
  | MenhirState165
  | MenhirState164
  | MenhirState162
  | MenhirState160
  | MenhirState158
  | MenhirState156
  | MenhirState155
  | MenhirState154
  | MenhirState153
  | MenhirState152
  | MenhirState151
  | MenhirState150
  | MenhirState148
  | MenhirState143
  | MenhirState141
  | MenhirState140
  | MenhirState134
  | MenhirState132
  | MenhirState131
  | MenhirState130
  | MenhirState129
  | MenhirState128
  | MenhirState127
  | MenhirState125
  | MenhirState123
  | MenhirState121
  | MenhirState120
  | MenhirState119
  | MenhirState118
  | MenhirState117
  | MenhirState116
  | MenhirState115
  | MenhirState113
  | MenhirState110
  | MenhirState109
  | MenhirState108
  | MenhirState103
  | MenhirState102
  | MenhirState100
  | MenhirState97
  | MenhirState96
  | MenhirState93
  | MenhirState91
  | MenhirState89
  | MenhirState87
  | MenhirState86
  | MenhirState84
  | MenhirState83
  | MenhirState80
  | MenhirState78
  | MenhirState75
  | MenhirState70
  | MenhirState69
  | MenhirState68
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState55
  | MenhirState48
  | MenhirState45
  | MenhirState41
  | MenhirState40
  | MenhirState38
  | MenhirState37
  | MenhirState36
  | MenhirState34
  | MenhirState30
  | MenhirState28
  | MenhirState25
  | MenhirState23
  | MenhirState21
  | MenhirState19
  | MenhirState17
  | MenhirState10
  | MenhirState4
  | MenhirState2
  | MenhirState0

# 8 "src/parser.mly"
  
open Ast

# 183 "src/parser.ml"

let rec _menhir_goto_separated_nonempty_list_SEMICOLON_fieldtype_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_fieldtype_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv753) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_fieldtype_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv751) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_fieldtype_) : 'tv_separated_nonempty_list_SEMICOLON_fieldtype_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_fieldtype__ = 
# 144 "<standard.mly>"
    ( x )
# 200 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_fieldtype__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv752)) : 'freshtv754)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv757 * _menhir_state * 'tv_fieldtype)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_fieldtype_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv755 * _menhir_state * 'tv_fieldtype)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_fieldtype_) : 'tv_separated_nonempty_list_SEMICOLON_fieldtype_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_fieldtype)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_fieldtype_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 216 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_fieldtype_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv756)) : 'freshtv758)
    | _ ->
        _menhir_fail ()

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_texpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | INTTYPE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LANGLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LBRACE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | REFTYPE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | UNITTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_goto_separated_nonempty_list_COMMA_ID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_ID_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv745 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 254 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv743 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 262 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_ID_) : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 23 "src/parser.mly"
       (string)
# 269 "src/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_ID_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 274 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv744)) : 'freshtv746)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv749) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv747) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_ID_) : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ID__ = 
# 144 "<standard.mly>"
    ( x )
# 289 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv748)) : 'freshtv750)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_SEMICOLON_field_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_field_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv737) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv735) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_field_) : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_field__ = 
# 144 "<standard.mly>"
    ( x )
# 315 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv736)) : 'freshtv738)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv741 * _menhir_state * 'tv_field)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv739 * _menhir_state * 'tv_field)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_field_) : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_field)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_field_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 331 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv740)) : 'freshtv742)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv729) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv727) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 352 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv728)) : 'freshtv730)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv733 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv731 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 368 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv732)) : 'freshtv734)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv721) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv719) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 389 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv720)) : 'freshtv722)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv725 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv723 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 405 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv724)) : 'freshtv726)
    | _ ->
        _menhir_fail ()

and _menhir_run109 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | DEBUG ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | DEREF ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | EMPTYSTACK ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | FST ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
    | IF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
    | ISEMPTY ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | ISZERO ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | LANGLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | LBRACE ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | LET ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | LETREC ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | NEWREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | PAIR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | POP ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | PROC ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | PUSH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | SET ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | SETREF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | SIZE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | SND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | TOP ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | UNPAIR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | UNTUPLE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109

and _menhir_run115 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | DEBUG ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | DEREF ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | EMPTYSTACK ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | FST ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
    | IF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
    | ISEMPTY ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | ISZERO ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | LANGLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | LBRACE ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | LET ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | LETREC ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | NEWREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | PAIR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | POP ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | PROC ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | PUSH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | SET ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | SETREF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | SIZE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | SND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | TOP ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | UNPAIR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | UNTUPLE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115

and _menhir_run119 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | DEBUG ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | DEREF ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | EMPTYSTACK ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | FST ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
    | IF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
    | ISEMPTY ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | ISZERO ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | LANGLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | LBRACE ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | LET ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | LETREC ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | NEWREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | PAIR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | POP ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | PROC ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | PUSH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | SET ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | SETREF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | SIZE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | SND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | TOP ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | UNPAIR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | UNTUPLE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119

and _menhir_run111 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv715 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 618 "src/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv713 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let ((id : (
# 23 "src/parser.mly"
       (string)
# 626 "src/parser.ml"
        )) : (
# 23 "src/parser.mly"
       (string)
# 630 "src/parser.ml"
        )) = _v in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _) = _menhir_stack in
        let _v : 'tv_expr = 
# 188 "src/parser.mly"
                          ( Proj(e1,id) )
# 636 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv714)) : 'freshtv716)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv717 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv718)

and _menhir_run117 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | DEBUG ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | DEREF ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | EMPTYSTACK ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | FST ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
    | IF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
    | ISEMPTY ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | ISZERO ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | LANGLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | LBRACE ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | LET ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | LETREC ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | NEWREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | PAIR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | POP ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | PROC ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | PUSH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | SET ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | SETREF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | SIZE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | SND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | TOP ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | UNPAIR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | UNTUPLE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_fieldtype__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_fieldtype__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv711 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_fieldtype__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv707 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_fieldtype__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv705 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_fieldtype__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_SEMICOLON_fieldtype__)) = _menhir_stack in
        let _v : 'tv_texpr = let ts = 
# 232 "<standard.mly>"
    ( xs )
# 730 "src/parser.ml"
         in
        
# 223 "src/parser.mly"
                                                                ( RecordType(ts) )
# 735 "src/parser.ml"
         in
        _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv706)) : 'freshtv708)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv709 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_fieldtype__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv710)) : 'freshtv712)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "src/parser.mly"
       (string)
# 749 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv701 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 761 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOLTYPE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | INTTYPE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LANGLE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LBRACE ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LPAREN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | REFTYPE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | UNITTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv702)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv703 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 791 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv704)

and _menhir_goto_texpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_texpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv625 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv621 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | INTTYPE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | LANGLE ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | LBRACE ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | LPAREN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | REFTYPE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | UNITTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv622)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv623 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv624)) : 'freshtv626)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv633 * _menhir_state) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | RANGLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv629 * _menhir_state) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv627 * _menhir_state) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (t1 : 'tv_texpr)), _, (t2 : 'tv_texpr)) = _menhir_stack in
            let _v : 'tv_texpr = 
# 220 "src/parser.mly"
                                                    ( PairType(t1,t2) )
# 857 "src/parser.ml"
             in
            _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv628)) : 'freshtv630)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv631 * _menhir_state) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv632)) : 'freshtv634)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv639 * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | BEGIN | COMMA | DEBUG | DEREF | DIVIDED | DOT | ELSE | EMPTYSTACK | END | EOF | EQUALS | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TIMES | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv635 * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : 'tv_texpr)), _, (t2 : 'tv_texpr)) = _menhir_stack in
            let _v : 'tv_texpr = 
# 219 "src/parser.mly"
                                    ( FuncType(t1,t2) )
# 882 "src/parser.ml"
             in
            _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv636)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv637 * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv638)) : 'freshtv640)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv655 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 897 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv651 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 909 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : (
# 23 "src/parser.mly"
       (string)
# 914 "src/parser.ml"
            ))), _, (t : 'tv_texpr)) = _menhir_stack in
            let _v : 'tv_fieldtype = 
# 226 "src/parser.mly"
                              ( (id,t) )
# 919 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv649) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fieldtype) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv647 * _menhir_state * 'tv_fieldtype) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv641 * _menhir_state * 'tv_fieldtype) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv642)
            | RBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv643 * _menhir_state * 'tv_fieldtype) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_fieldtype)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_SEMICOLON_fieldtype_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 950 "src/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_SEMICOLON_fieldtype_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv644)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv645 * _menhir_state * 'tv_fieldtype) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv646)) : 'freshtv648)) : 'freshtv650)) : 'freshtv652)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv653 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 967 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv654)) : 'freshtv656)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv663 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv659 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv657 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t1 : 'tv_texpr)) = _menhir_stack in
            let _v : 'tv_texpr = 
# 221 "src/parser.mly"
                                 ( t1 )
# 989 "src/parser.ml"
             in
            _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv658)) : 'freshtv660)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv661 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv662)) : 'freshtv664)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv667 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv665 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (t1 : 'tv_texpr)) = _menhir_stack in
        let _v : 'tv_texpr = 
# 222 "src/parser.mly"
                          ( RefType(t1) )
# 1008 "src/parser.ml"
         in
        _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv666)) : 'freshtv668)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv677 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1016 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv673 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1028 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv669 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1038 "src/parser.ml"
                ))) * _menhir_state * 'tv_texpr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BEGIN ->
                    _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | DEBUG ->
                    _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | DEREF ->
                    _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | EMPTYSTACK ->
                    _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | FST ->
                    _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | ID _v ->
                    _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
                | IF ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | INT _v ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
                | ISEMPTY ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | ISZERO ->
                    _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | LANGLE ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | LBRACE ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | LET ->
                    _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | LETREC ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | LPAREN ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | NEWREF ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | PAIR ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | POP ->
                    _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | PROC ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | PUSH ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | SET ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | SETREF ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | SIZE ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | SND ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | TOP ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | UNPAIR ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | UNTUPLE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv670)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv671 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1108 "src/parser.ml"
                ))) * _menhir_state * 'tv_texpr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv672)) : 'freshtv674)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv675 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1119 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv676)) : 'freshtv678)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv687 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1128 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 1132 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv683 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1144 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 1148 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv679 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1158 "src/parser.ml"
                ))) * (
# 23 "src/parser.mly"
       (string)
# 1162 "src/parser.ml"
                ))) * _menhir_state * 'tv_texpr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLTYPE ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | INTTYPE ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | LANGLE ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | LBRACE ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | LPAREN ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | REFTYPE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | UNITTYPE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv680)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv681 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1192 "src/parser.ml"
                ))) * (
# 23 "src/parser.mly"
       (string)
# 1196 "src/parser.ml"
                ))) * _menhir_state * 'tv_texpr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv682)) : 'freshtv684)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv685 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1207 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 1211 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv686)) : 'freshtv688)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv693 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1220 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 1224 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv689 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1236 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 1240 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv690)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv691 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1310 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 1314 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv692)) : 'freshtv694)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv699 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | BEGIN | COMMA | DEBUG | DEREF | DIVIDED | DOT | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TIMES | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv695 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_texpr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 165 "src/parser.mly"
                          ( EmptyStack(t) )
# 1333 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv696)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv697 * _menhir_state) * _menhir_state * 'tv_texpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv698)) : 'freshtv700)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_ID__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv619) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_ID__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv617) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs : 'tv_loption_separated_nonempty_list_COMMA_ID__) : 'tv_loption_separated_nonempty_list_COMMA_ID__) = _v in
    ((let _v : 'tv_ids = let is = 
# 232 "<standard.mly>"
    ( xs )
# 1359 "src/parser.ml"
     in
    
# 204 "src/parser.mly"
                                      ( is )
# 1364 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv615) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_ids) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv613 * _menhir_state)) * _menhir_state * 'tv_ids) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RANGLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv609 * _menhir_state)) * _menhir_state * 'tv_ids) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv605 * _menhir_state)) * _menhir_state * 'tv_ids)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv606)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv607 * _menhir_state)) * _menhir_state * 'tv_ids)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv608)) : 'freshtv610)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv611 * _menhir_state)) * _menhir_state * 'tv_ids) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)) : 'freshtv614)) : 'freshtv616)) : 'freshtv618)) : 'freshtv620)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "src/parser.mly"
       (string)
# 1464 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv599 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 1476 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv600)
    | RANGLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 1492 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 23 "src/parser.mly"
       (string)
# 1497 "src/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_ID_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1502 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv602)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv603 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 1512 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv604)

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_field__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv597 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv593 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv591 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_SEMICOLON_field__)) = _menhir_stack in
        let _v : 'tv_expr = let fs = 
# 232 "<standard.mly>"
    ( xs )
# 1535 "src/parser.ml"
         in
        
# 187 "src/parser.mly"
             ( Record(fs) )
# 1540 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv592)) : 'freshtv594)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv595 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv596)) : 'freshtv598)

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "src/parser.mly"
       (string)
# 1554 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUALS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv587 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 1566 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv588)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 1636 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv585) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv583) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs : 'tv_loption_separated_nonempty_list_COMMA_expr__) : 'tv_loption_separated_nonempty_list_COMMA_expr__) = _v in
    ((let _v : 'tv_exprs_with_comma = let es = 
# 232 "<standard.mly>"
    ( xs )
# 1654 "src/parser.ml"
     in
    
# 207 "src/parser.mly"
                                        ( es )
# 1659 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv581) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exprs_with_comma) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv579 * _menhir_state) * _menhir_state * 'tv_exprs_with_comma) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RANGLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv575 * _menhir_state) * _menhir_state * 'tv_exprs_with_comma) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv573 * _menhir_state) * _menhir_state * 'tv_exprs_with_comma) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (es : 'tv_exprs_with_comma)) = _menhir_stack in
        let _v : 'tv_expr = 
# 193 "src/parser.mly"
                                            ( Tuple(es) )
# 1681 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)) : 'freshtv576)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv577 * _menhir_state) * _menhir_state * 'tv_exprs_with_comma) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv578)) : 'freshtv580)) : 'freshtv582)) : 'freshtv584)) : 'freshtv586)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState113 | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv357 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState108 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv358)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1785 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv362)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv365 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | BEGIN | COMMA | DEBUG | DEREF | DIVIDED | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TIMES | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv363 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 169 "src/parser.mly"
                                  ( Mul(e1,e2) )
# 1807 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv366)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv369 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv367 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 167 "src/parser.mly"
                                 ( Add(e1,e2) )
# 1833 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv370)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | BEGIN | COMMA | DEBUG | DEREF | DIVIDED | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TIMES | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv371 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 170 "src/parser.mly"
                                    ( Div(e1,e2) )
# 1855 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv374)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 168 "src/parser.mly"
                                  ( Sub(e1,e2) )
# 1881 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv378)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv383 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState121 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 166 "src/parser.mly"
                                    ( Debug(e) )
# 1914 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv384)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv389 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv387 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState123 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv385 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 178 "src/parser.mly"
                                      ( DeRef(e) )
# 1949 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv390)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv395 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv393 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState125 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv391 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 190 "src/parser.mly"
                                  ( Fst(e) )
# 1984 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv396)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv399 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv397 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState127 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv398)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv400)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv403 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv401 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState129 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv402)
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv404)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv407 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv405 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 180 "src/parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 2188 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv408)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv413 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv411 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState132 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv409 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 199 "src/parser.mly"
                                         ( IsEmpty(e1) )
# 2221 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)) : 'freshtv412)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv414)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv419 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv417 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState134 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv415 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 176 "src/parser.mly"
                                       ( IsZero(e) )
# 2256 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)) : 'freshtv418)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv420)
    | MenhirState141 | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv421 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState140 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv422)
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | RANGLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv423 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2354 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140) : 'freshtv426)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv439 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 2366 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | RBRACE | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv437 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 2386 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : (
# 23 "src/parser.mly"
       (string)
# 2391 "src/parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_field = 
# 213 "src/parser.mly"
                              ( (id,e) )
# 2396 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv435) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_field) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv433 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv427 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv428)
            | RBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv429 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_field)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_SEMICOLON_field_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2427 "src/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_SEMICOLON_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv431 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)) : 'freshtv434)) : 'freshtv436)) : 'freshtv438)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv440)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv443 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2446 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv441 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2460 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState150 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv442)
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState150) : 'freshtv444)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv447 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2540 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState152
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv445 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2560 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 2565 "src/parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 171 "src/parser.mly"
                                                    ( Let(x,e1,e2) )
# 2570 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152) : 'freshtv448)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv451 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2582 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2586 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((((('freshtv449 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2600 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 2604 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState153 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154) : 'freshtv450)
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState153
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv452)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv455 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2684 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2688 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((((((('freshtv453 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2708 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 2712 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 2717 "src/parser.ml"
            ))), (y : (
# 23 "src/parser.mly"
       (string)
# 2721 "src/parser.ml"
            ))), _, (targ : 'tv_texpr)), _, (tr : 'tv_texpr)), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 173 "src/parser.mly"
                                                   ( Letrec(x,y,targ,tr,e1,e2) )
# 2726 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155) : 'freshtv456)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv461 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv459 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState156 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv457 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 185 "src/parser.mly"
                                      ( Sub(Int 0, e) )
# 2759 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv462)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv467 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv465 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState158 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv463 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 183 "src/parser.mly"
                               (e)
# 2834 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)) : 'freshtv466)
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158) : 'freshtv468)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv473 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv471 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState160 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv469 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 175 "src/parser.mly"
                                           ( App(e1,e2) )
# 2883 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv470)) : 'freshtv472)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160) : 'freshtv474)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv479 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv477 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState162 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv475 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 177 "src/parser.mly"
                                       ( NewRef(e) )
# 2918 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)) : 'freshtv478)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv480)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv483 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv481 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState164 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165) : 'freshtv482)
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv484)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv489 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv487 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState166 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv485 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 189 "src/parser.mly"
                                                    ( Pair(e1,e2) )
# 3039 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)) : 'freshtv488)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv490)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv495 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv493 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState168 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv491 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 197 "src/parser.mly"
                                     ( Pop(e1) )
# 3074 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv492)) : 'freshtv494)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv496)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv501 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3088 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState170
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState170
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState170
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState170
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv499 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3106 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState170 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv497 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3114 "src/parser.ml"
            ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 3120 "src/parser.ml"
            ))), _, (t : 'tv_texpr)), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 174 "src/parser.mly"
                                                                             ( Proc(x,t,e) )
# 3125 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv498)) : 'freshtv500)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState170
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170) : 'freshtv502)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv505 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv503 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState172 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState173
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState173) : 'freshtv504)
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv506)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv511 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv509 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState174 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv507 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 196 "src/parser.mly"
                                                        ( Push(e1,e2) )
# 3246 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)) : 'freshtv510)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174) : 'freshtv512)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv515 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3260 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState176
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState176
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState176
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState176
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState176
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv513 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3280 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 3285 "src/parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 181 "src/parser.mly"
                                    ( Set(x,e) )
# 3290 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176) : 'freshtv516)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv519 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv517 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState177 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178) : 'freshtv518)
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177) : 'freshtv520)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv525 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv523 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState179 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv521 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 179 "src/parser.mly"
                                                          ( SetRef(e1,e2) )
# 3409 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv522)) : 'freshtv524)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179) : 'freshtv526)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv531 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState181
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState181
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState181
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState181
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv529 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState181 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv527 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 200 "src/parser.mly"
                                      ( Size(e1) )
# 3444 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv528)) : 'freshtv530)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState181
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181) : 'freshtv532)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv537 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv535 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState183 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv533 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 191 "src/parser.mly"
                                  ( Snd(e) )
# 3479 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv534)) : 'freshtv536)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183) : 'freshtv538)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv543 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState185
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState185
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState185
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState185
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv541 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState185 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv539 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 198 "src/parser.mly"
                                     ( Top(e1) )
# 3514 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv540)) : 'freshtv542)
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState185
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185) : 'freshtv544)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv547 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3528 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 3532 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv545 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3546 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 3550 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState187 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState188) : 'freshtv546)
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState187) : 'freshtv548)
    | MenhirState188 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv551 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3630 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 3634 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState189
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState189
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState189
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState189
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState189
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv549 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3654 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 3658 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 3663 "src/parser.ml"
            ))), (y : (
# 23 "src/parser.mly"
       (string)
# 3667 "src/parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 192 "src/parser.mly"
                                                                                    ( Unpair(x,y,e1,e2) )
# 3672 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState189) : 'freshtv552)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv555 * _menhir_state)) * _menhir_state * 'tv_ids))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv553 * _menhir_state)) * _menhir_state * 'tv_ids))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState190 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191) : 'freshtv554)
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190) : 'freshtv556)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv559 * _menhir_state)) * _menhir_state * 'tv_ids))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | EMPTYSTACK | END | EOF | FST | ID _ | IF | IN | INT _ | ISEMPTY | ISZERO | LANGLE | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | POP | PROC | PUSH | RANGLE | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SIZE | SND | THEN | TOP | UNPAIR | UNTUPLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv557 * _menhir_state)) * _menhir_state * 'tv_ids))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), _, (is : 'tv_ids)), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 195 "src/parser.mly"
                ( Untuple(is,e1,e2) )
# 3788 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv558)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState192) : 'freshtv560)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState194
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState194
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv569 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState194 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv567 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _v : (
# 101 "src/parser.mly"
       (Ast.expr)
# 3816 "src/parser.ml"
            ) = 
# 134 "src/parser.mly"
                 ( e )
# 3820 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv565) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 101 "src/parser.mly"
       (Ast.expr)
# 3828 "src/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv563) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 101 "src/parser.mly"
       (Ast.expr)
# 3836 "src/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv561) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 101 "src/parser.mly"
       (Ast.expr)
# 3844 "src/parser.ml"
            )) : (
# 101 "src/parser.mly"
       (Ast.expr)
# 3848 "src/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv562)) : 'freshtv564)) : 'freshtv566)) : 'freshtv568)) : 'freshtv570)
        | MINUS ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState194
        | PLUS ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState194
        | TIMES ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState194
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState194) : 'freshtv572)
    | _ ->
        _menhir_fail ()

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv355) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_texpr = 
# 218 "src/parser.mly"
               ( UnitType )
# 3873 "src/parser.ml"
     in
    _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | INTTYPE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LANGLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LBRACE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | REFTYPE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | UNITTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | INTTYPE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LANGLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LBRACE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | REFTYPE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | UNITTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv353) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState38 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_fieldtype__ = 
# 142 "<standard.mly>"
    ( [] )
# 3942 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_fieldtype__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | INTTYPE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LANGLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LBRACE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | REFTYPE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | UNITTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv351) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_texpr = 
# 216 "src/parser.mly"
              ( IntType )
# 3984 "src/parser.ml"
     in
    _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv349) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_texpr = 
# 217 "src/parser.mly"
               ( BoolType )
# 3997 "src/parser.ml"
     in
    _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv347) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv345) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let _v : 'tv_exprs = let es = 
# 232 "<standard.mly>"
    ( xs )
# 4014 "src/parser.ml"
     in
    
# 210 "src/parser.mly"
                                            ( es )
# 4019 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv343) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exprs) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv341 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (es : 'tv_exprs)) = _menhir_stack in
        let _v : 'tv_expr = 
# 182 "src/parser.mly"
                             ( BeginEnd(es) )
# 4041 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)) : 'freshtv338)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv339 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)) : 'freshtv344)) : 'freshtv346)) : 'freshtv348)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv143 * _menhir_state)) * _menhir_state * 'tv_ids))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv145 * _menhir_state)) * _menhir_state * 'tv_ids))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv147 * _menhir_state)) * _menhir_state * 'tv_ids))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv149 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4080 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 4084 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState188 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv151 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4093 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 4097 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv153 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4106 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 4110 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv161 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv163 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv167 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4149 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv169 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv171 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv173 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv175 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4173 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv179 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv181 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv183 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv185 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv193 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4222 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 4226 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv195 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4235 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 4239 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv197 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4248 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 4252 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv199 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4261 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv201 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4270 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv203 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4279 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state * 'tv_field)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 4293 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv217 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv219 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv221 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv227 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv229 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv255 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv265 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv267 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 4457 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4471 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv277 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4480 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 4484 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) * _menhir_state * 'tv_texpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv279 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4493 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 4497 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv281 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4506 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 4510 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv283 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv287 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv289 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv291 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv293 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4544 "src/parser.ml"
        ))) * _menhir_state * 'tv_texpr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv295 * _menhir_state * 'tv_fieldtype)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * _menhir_state * 'tv_texpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv299 * _menhir_state) * _menhir_state * 'tv_texpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv303 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 4573 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv307 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv311 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4597 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv313 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 4611 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv319 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv325 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4640 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 4644 "src/parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv327 * _menhir_state)) * _menhir_state * 'tv_ids))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv329 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 4658 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv331 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv334)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LANGLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | RANGLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState2 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ID__ = 
# 142 "<standard.mly>"
    ( [] )
# 4693 "src/parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv138)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv127 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 23 "src/parser.mly"
       (string)
# 4726 "src/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv123 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4737 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv119 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4747 "src/parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    let (_v : (
# 23 "src/parser.mly"
       (string)
# 4752 "src/parser.ml"
                    )) = _v in
                    ((let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | RPAREN ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv115 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4763 "src/parser.ml"
                        ))) * (
# 23 "src/parser.mly"
       (string)
# 4767 "src/parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | EQUALS ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv111 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4777 "src/parser.ml"
                            ))) * (
# 23 "src/parser.mly"
       (string)
# 4781 "src/parser.ml"
                            ))) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | BEGIN ->
                                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | DEBUG ->
                                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | DEREF ->
                                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | EMPTYSTACK ->
                                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | FST ->
                                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | ID _v ->
                                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
                            | IF ->
                                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | INT _v ->
                                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
                            | ISEMPTY ->
                                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | ISZERO ->
                                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | LANGLE ->
                                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | LBRACE ->
                                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | LET ->
                                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | LETREC ->
                                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | LPAREN ->
                                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | NEWREF ->
                                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | PAIR ->
                                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | POP ->
                                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | PROC ->
                                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | PUSH ->
                                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | SET ->
                                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | SETREF ->
                                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | SIZE ->
                                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | SND ->
                                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | TOP ->
                                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | UNPAIR ->
                                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | UNTUPLE ->
                                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv112)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv113 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4851 "src/parser.ml"
                            ))) * (
# 23 "src/parser.mly"
       (string)
# 4855 "src/parser.ml"
                            ))) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)) : 'freshtv116)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv117 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4866 "src/parser.ml"
                        ))) * (
# 23 "src/parser.mly"
       (string)
# 4870 "src/parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv121 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4881 "src/parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)) : 'freshtv124)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv125 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 4892 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)) : 'freshtv128)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv129 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)) : 'freshtv132)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv108)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv104)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv100)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv96)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 5235 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv87 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 5246 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv88)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv89 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 5316 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv84)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv75 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 23 "src/parser.mly"
       (string)
# 5424 "src/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv71 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 5435 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLTYPE ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | INTTYPE ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | LANGLE ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | LBRACE ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | LPAREN ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | REFTYPE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | UNITTYPE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv72)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv73 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 5465 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv77 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)) : 'freshtv80)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv68)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv64)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv60)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | DEBUG ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | DEREF ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | EMPTYSTACK ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | FST ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | IF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | ISEMPTY ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | ISZERO ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LANGLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LBRACE ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LET ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LETREC ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | MINUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState69 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv58)
    | NEWREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | PAIR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | POP ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | PROC ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | PUSH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | SET ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | SETREF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | SIZE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | SND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | TOP ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | UNPAIR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | UNTUPLE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 5861 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv49 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 5872 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv45 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 5882 "src/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 23 "src/parser.mly"
       (string)
# 5887 "src/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COLON ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv41 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 5898 "src/parser.ml"
                    ))) * (
# 23 "src/parser.mly"
       (string)
# 5902 "src/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BOOLTYPE ->
                        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75
                    | INTTYPE ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75
                    | LANGLE ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75
                    | LBRACE ->
                        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState75
                    | LPAREN ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
                    | REFTYPE ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState75
                    | UNITTYPE ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState75
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv42)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv43 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 5932 "src/parser.ml"
                    ))) * (
# 23 "src/parser.mly"
       (string)
# 5936 "src/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv47 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 5947 "src/parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv51 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 5958 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)) : 'freshtv54)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 5982 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 5993 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | DEBUG ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | DEREF ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | EMPTYSTACK ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | FST ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | IF ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | ISEMPTY ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | ISZERO ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LANGLE ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LBRACE ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LET ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LETREC ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LPAREN ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | NEWREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | PAIR ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | POP ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | PROC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | PUSH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | SET ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | SETREF ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | SIZE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | SND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | TOP ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | UNPAIR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | UNTUPLE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 6063 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState84 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_field__ = 
# 142 "<standard.mly>"
    ( [] )
# 6090 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | DEBUG ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | DEREF ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | EMPTYSTACK ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | FST ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | IF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | ISEMPTY ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | ISZERO ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | LANGLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | LBRACE ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | LET ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | LETREC ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | NEWREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | PAIR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | POP ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | PROC ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | PUSH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | SET ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | SETREF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | SIZE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | SND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | TOP ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | UNPAIR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | UNTUPLE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | RANGLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState87 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 6165 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_run88 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_run92 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "src/parser.mly"
       (int)
# 6332 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 22 "src/parser.mly"
       (int)
# 6342 "src/parser.ml"
    )) : (
# 22 "src/parser.mly"
       (int)
# 6346 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 163 "src/parser.mly"
              ( Int i )
# 6351 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | DEBUG ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | DEREF ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | EMPTYSTACK ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | FST ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | IF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | ISEMPTY ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | ISZERO ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | LANGLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | LBRACE ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | LET ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | LETREC ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | NEWREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | PAIR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | POP ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | PROC ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | PUSH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | SET ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | SETREF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | SIZE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | SND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | TOP ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | UNPAIR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | UNTUPLE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93

and _menhir_run94 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "src/parser.mly"
       (string)
# 6423 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 23 "src/parser.mly"
       (string)
# 6433 "src/parser.ml"
    )) : (
# 23 "src/parser.mly"
       (string)
# 6437 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 164 "src/parser.mly"
             ( Var x )
# 6442 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run95 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run97 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | INTTYPE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | LANGLE ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | LBRACE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | REFTYPE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | UNITTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)

and _menhir_run101 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | DEBUG ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | DEREF ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | EMPTYSTACK ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | FST ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | ID _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | IF ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | INT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | ISEMPTY ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | ISZERO ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LANGLE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LBRACE ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LETREC ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | NEWREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | PAIR ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | POP ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | PROC ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | PUSH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | SET ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | SETREF ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | SIZE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | SND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | TOP ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | UNPAIR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | UNTUPLE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | DEBUG ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | DEREF ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | EMPTYSTACK ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | FST ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | IF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | ISEMPTY ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | ISZERO ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | LANGLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | LBRACE ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | LET ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | LETREC ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | NEWREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | PAIR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | POP ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | PROC ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | PUSH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | SET ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | SETREF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | SIZE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | SND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | TOP ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | UNPAIR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | UNTUPLE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState103 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 6772 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103

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
# 101 "src/parser.mly"
       (Ast.expr)
# 6795 "src/parser.ml"
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
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEBUG ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEREF ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EMPTYSTACK ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FST ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ISEMPTY ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ISZERO ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LANGLE ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LBRACE ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LETREC ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEWREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PAIR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | POP ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PROC ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PUSH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SET ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SETREF ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SIZE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TOP ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | UNPAIR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | UNTUPLE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 6871 "src/parser.ml"
