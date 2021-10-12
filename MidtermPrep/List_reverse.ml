(*manual implementation *)
let reverse l = 
  let rec aux acc l = match l with 
  | [] -> acc 
  | x::t -> aux (x::acc) t 
  in aux [] l ;;

(*
  Important remark, 
  here x::acc appends the 'a to the right of
  the 'a list acc, this is the syntax 
  'a :: 'a list where 'a is appendeded to the right of
  the 'a list
*)
(*ocaml inbuilt function*)
let reverse l = List.rev l