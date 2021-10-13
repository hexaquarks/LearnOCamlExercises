(* check if first row is okay*)
(* check if first column is okay*)
(* then reccurse*)

let rec is_diagonal m = match m with 
| [] -> true
| row::rows -> if 
    (List.for_all (fun x -> x = 0) (List.tl row)) && 
    (List.for_all (fun x -> x = 0) (List.map (fun x -> List.hd x) m)) then 
      is_diagonal (List.map (fun x -> List.tl x) rows)
    else false