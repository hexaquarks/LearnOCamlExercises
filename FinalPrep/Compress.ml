type nucleobase = T | A | C | G

let compress l = 
  let rec compress_rec l counter = 
    match l with 
    | [] -> [] 
    | [x1 ; x2] -> 
        if x1 == x2 
        then ((counter+1) , x1) :: compress_rec [] 0
        else (counter+1 , x1)  :: (1, x2) :: compress_rec [] 0
    | x :: t -> 
        if List.hd t == x 
        then compress_rec t (counter+1) 
        else (counter+1 , x) :: compress_rec t 0 
  in compress_rec l 0
