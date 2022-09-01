(*Michael Sanchez
I pledge my honor that I have abided by the Stevens Honor System*)
type program = int list
let  square : program = [0; 2; 2; 3; 3; 4; 4; 5; 5; 1]
let  letter_e : program = [0;2;2;3;3;5;5;4;3;5;4;3;3;5;5;1]

let reverse_direction (n: int) : int =
    match n with
    | 2 -> 4
    | 3 -> 5
    | 4 -> 2
    | 5 -> 3
    | 0 -> 0
    | 1 -> 1
    | _ -> failwith "invalid program"

let rotate_90 (n: int) : int = 
    match n with
    | 2 -> 3
    | 3 -> 4
    | 4 -> 5
    | 5 -> 2
    | 0 -> 0
    | 1 -> 1
    | _ -> failwith "invalid program"

let mirror_image (n:int list) : int list = List.map reverse_direction n

let rotate_90_letter (n:int list) : int list = List.map rotate_90 n

let rotate_90_word (n:int list list) : int list list = List.map rotate_90_letter n

let rec repeat (n:int) (x:'a) : 'a list =
    if x < 2
    then []
    else match n with
    | 0 -> []
    | m -> x::(repeat (n-1) x)

let rec concat (l1: 'a list) (l2: 'a list): 'a list = 
    match l1 with
    | [] -> l2
    | h::[] -> h::l2
    | h::t -> h::(concat t l2)

let rec pantograph_nm (n:int) (p:int list): int list = 
    match p with
    | [] -> []
    | hd::tl -> concat (repeat n hd) (pantograph_nm n tl)


