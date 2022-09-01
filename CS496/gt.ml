(* 

   Stub for HW2 
   Please
   1. Rename to gt.ml
   2. Place the names of the group members here:

    Name1: Simrun Heir
    Name2: Michael Sanchez

*)


type 'a gt = Node of 'a*('a gt) list

let mk_leaf (n:'a) : 'a gt =
  Node(n,[])
    
let t : int gt =
 Node (33,
       [Node (12,[]);
        Node (77, 
              [Node (37, 
                     [Node (14, [])]); 
               Node (48, []); 
               Node (103, [])])
       ])

let rec height t =
  match t with
    | Node(_,[]) -> 1
    | Node(_,m) -> 1 + (List.fold_left max 0 (List.map height m))

let sum a b = a+b

let rec mapt f (Node(d, ch)) =
  Node(f d, List.map (mapt f) ch)
  
let rec foldt : ('a -> 'b list -> 'b) -> 'a gt -> 'b =
  fun f (Node(d,ch)) ->
  f d (List.map (foldt f) ch)

let sumt t =
  foldt (fun i rs -> i + List.fold_left (fun i j -> i+j) 0 rs) t

let memt t e = 
  foldt (fun i rs -> i=e || List.exists (fun i -> i) rs) t

let sum a b = a+b

let rec size t =
  match t with
  | Node(_,[]) -> 1
  | Node(_,m) -> 1 + (List.fold_left sum 0 (List.map size m))

let rec paths_to_leaves t =
	match t with 
  | Node(_,[]) -> [[]]
  | Node(_,ch) ->
    let n = (List.length ch)-1 in
    let rec extract i acc : int list list = 
      match i with
      | 0 -> (List.map (fun l -> 0::l) (paths_to_leaves (List.nth ch 0)))
      | i -> (extract (i - 1) acc) @ (List.map (fun l -> i::l) (paths_to_leaves (List.nth ch i)))
      in
    extract n []

let compare a b = a && b

let rec compare_ints a =
  match a with
  | [] -> true
  | h::tl::r::rr -> h==tl
  | h::tl -> true

let rec is_perfect t =
  match t with
  | Node(_,[]) -> true
  | Node(_,ch) -> (List.fold_left compare true (List.map is_perfect ch)) && (compare_ints (List.map height ch))

let rec preorder (Node(d,ch)) =
	match Node(d,ch) with
  | Node(_,[]) -> [d]
  | Node(_,m) -> d :: (List.flatten (List.map preorder m))
                        
let rec mirror (Node(d,ch)) =
  Node(d,List.map mirror (List.rev ch))

let mirror' (Node(d,ch))  = 
  match t with
  | Node(d,[]) -> t
  | Node(d,ch) -> Node(d,List.rev_map (foldt (fun m c -> Node(m,List.rev c)))ch)
