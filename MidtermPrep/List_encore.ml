let encode l = 
  let rec aux count acc l = match l with 
  | [] -> []
  | [x] -> (count + 1 , x) :: acc
  | x :: (y :: _ as t) ->
    if x = y then aux (count + 1) acc t 
    else aux 0 ((count + 1, x) :: acc) t
  in 
  List.rev(aux 0 [] l)

(*encode ["a"; "a" ;"b"] ---> [(2, "a") , (1 , "b")]*)
