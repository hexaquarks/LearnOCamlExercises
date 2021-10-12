(*manual tail recursive solution*)
let length l = 
  let rec aux acc l = match l with 
  | [] -> acc
  | x::t -> aux (acc+1) t
  in aux 0 l ;;

(*ocaml inbuilt function*)
let length l = List.length l 

