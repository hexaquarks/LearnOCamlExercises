let rec insert x l = match l with 
  | [] -> []
  | x1 :: xs -> if x = x1 then l else x :: (insert x xs);