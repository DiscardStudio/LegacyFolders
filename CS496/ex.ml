(* Recursion on numbers *)

let rec fact n =
    match n with
    | 0 -> 1
    | m when m>0 -> m * fact (m-1)
    | _ -> failwith "negative argument"

let rec f (e:'a) (n:int) : 'a list =
    match n with
    | 0 -> []
    | m -> e :: f e (m-1)


(* Recursion on lists *)

let rec size (l:'a list) : int =
    match l with
    | [] -> 0
    | _::t -> 1 + size t


(** [mem e l] returns true if [e] belongs to [l], and false oth. *)
(* 
mem 1 [1;2;3] ==> true
mem 2 [1;4;6] ==> false
*)

    
(** [rev l] returns the reverse of [l] *) 
let rec rev l =
  match l with
  | [] -> []
  | h::t -> rev t @ [h] (*h::t is a list with a head and a tail*)

let rec rev' l a = 
    match l with 
    | [] -> a
    | h::t -> rev' t (h::a)

(*
stutter [] ==> []
stutter [2;1;3] ==> [2;2;1;1;3;3]
*)
let rec stutter l =
  match l with 
  | [] -> []
  | h::t -> h::h::stutter t

let has_size_at_least_two l =
  match l with
  | _::_::_ -> true
  | _ -> false
    
(* 
rad [] ==> []
rad [1] ==> [1]
rad [1;2;2;2;3;3;4] ==> [1;2;3;4]
*)
let rec remove_adj_duplicates l =
  failwith "implement"


(**well known higher order function schemes *)

let succ i = i+1
let upper c = Char.uppercase_ascii c
let is_zero i = i=0
(* increments each number in l by one and returns the resluting list *)
let rec succl l = 
    match l with
    | [] -> []
    | h::t -> succ h :: succl t

let rec upperl l = 
    match l with
    | [] -> []
    | h::t -> upper h :: upperl t

let rec testzl l = 
    match l with 
    | [] -> []
    | h::t -> is_zero h :: testzl t 

let rec map (f:'a->'b) (l:'a list) : 'b list = 
    match l with
    | [] -> []
    | h::t -> f h :: map f t 

(** map is a higher order function scheme
typer of map| ( 'a -> 'b ) -> 'a list -> 'b list
( 'a -> 'b ) comes from f h
'a list comes from recursion on input list
'b list result after applying f onto input list
*)
let rec succl' = map succ
let rec upperl' = map upper
let rec testzl' = map is_zero


let is_positive i = i>0
let is_upper i = i = Char.uppercase_ascii i
let isne i = i<>[]

(** retains those numbers in 1 that are gtz; it throws others away*)
let rec greater_than_zero l = 
    match l with
    | [] -> []
    | h::t ->
    if is_positive h
    then h :: greater_than_zero t
    else greater_than_zero t

(** keeps all uppercase letters in list*)
let rec get_upper l = 
    match l with 
    | [] -> []
    | h::t -> 
    if is_upper h
    then h :: get_upper t 
    else get_upper t 

(** keeps list if non empty*)
let rec get_non_empty l = 
    match l with 
    | [] -> []
    | h::t ->
    if isne h
    then h :: get_non_empty t 
    else get_non_empty t 

let rec filter (p:'a->bool) (l:'a list) : 'a list = 
     match l with 
    | [] -> []
    | h::t ->
    if p h
    then h :: filter p t 
    else filter p t

(** 
filter type
( 'a -> bool) -> 'a list -> 'a list
bool is there because of if p h
returns 'a list because it filters out list 
without returning new list of possibly different type
*)

let greater_than_zero' = filter is_positive
let get_non_empty' = filter isne 

(**conjunction of the all the booleans in l *)

let rec suml (l:int list) : int =
    match l with
    | [] -> 0
    | h::t -> h + suml t

let rec suml2 : int list -> int = function
    | [] -> 0
    | h::t -> h + suml t

let rec suml3 : int list -> int =
    fun l ->
    match l with
    | [] -> 0
    | h::t -> h + suml t

(** flattens a list
when taking in a list of list it appends them al linto a singular list
*)
let rec concat l = 
    match l with
    | [] -> []
    | h::t -> h @ concat t 

(** 
type of foldr, fold right
( 'a -> 'b -> 'b ) -> 'b -> 'a list -> 'b
**('a -> ) 
    'a comes from f h, where 'a is the type of h, 
    'b comes from recursive call 
*)
let rec foldr (f: 'a ->'b->'b) (a:'a) (l:'a list) : 'b = 
    match l with
    | [] -> a
    | h::t -> f h (foldr f a t)

let andl' = foldr (fun h r -> h && r) true
let suml' = foldr (fun h r -> h + r) 0
let concat' = foldr (fun h r -> h @ r) []