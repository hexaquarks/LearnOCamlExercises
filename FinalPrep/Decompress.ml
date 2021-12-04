type nucleobase = T | A | C | G

let rec decompress l = match l with 
  | [] -> [] 
  | x :: t -> let (xs,n) = x in  
      n :: (
        if xs = 1 then decompress t else decompress ((xs-1,n) :: t)
      )