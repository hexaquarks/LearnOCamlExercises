let is_empty (matrix :'a list list ) : bool = 
  List.for_all (fun n -> n = [] ) matrix;;