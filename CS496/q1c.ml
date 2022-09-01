


(* Note: you may add helper functions *)


(* Sample Tree *)

let ex = [(12, 7); (12, 43); (7, 4); (43, 33); (43,77)]


(*
      12
      /\ 
     /  \  
    7   43
   /    /\ 
  /    /  \  
 4    33  77
*)
         
(** [outgoing_nodes t n] returns the list of nodes outgoing from node
 ** [n] in the tree [t]. You may assume the node [n] exists in the
 ** tree [t] .
 ** Eg. outgoing_nodes ex 12 => [7; 43]
*)
let rec outgoing_nodes t (n:int) : int list =
  match t with
  | [] -> []
  | (src,tgt)::tl ->
      if src==n
      then tgt::(outgoing_nodes tl n)
      else (outgoing_nodes tl n)
    
(** 
   [root t] returns the root of [t]
   eg. root ex => 12

*)
(** [leaves t] returns the list of nodes that are leaves in [t] 
   Eg. leaves ex =>  [4; 33; 77]
*)
let rec deep_mem (a:'a) (l:'a list) : bool =
  match l with
  | [] -> false
  | (fst,snd)::tl ->
    if fst == a
    then true
  else false

let rec leaves t : int list =
  match t with
  | [] -> []
  | (fst,snd)::tl -> 
    if deep_mem snd tl
    then leaves tl
    else snd::(leaves tl)
let rec mem (a:'a) (l:'a list) : bool =
  match l with
  | [] -> false
  | h::tl ->
    if h == a
    then true
    else mem a tl

let rec root t : int =
  match t with
  | [] -> 0
  | (fst,snd)::tl -> 
    if mem fst (leaves t)
    then root tl
    else fst

 
(** [reachable t n] returns the list of nodes reachable from [n] in
 ** the tree [t]. You may assume [n] is a valid node in [t]. 
 ** This exercise is extra-credit.
 **  Eg. reachale ex 12 =>  [12; 7; 4; 33; 43; 77]
*)

let rec reachable t (n:int) =
  failwith "implement me"