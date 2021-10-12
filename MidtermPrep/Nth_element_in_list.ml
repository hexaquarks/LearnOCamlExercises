
(*Manual tail-recursive solution*)
let nth n l = 
  let rec aux l acc = match l with 
  | [] -> None
  | h::t -> if acc=n then Some h else aux t (acc+1)
  in aux l 0 ;;

  (*In build ocaml function*)
 let nth n list = List.nth list n


