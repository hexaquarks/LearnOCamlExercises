(* Reminder: If a test case requires multiple arguments, use a tuple:
let myfn_with_2_args_tests = [
  ((arg1, arg1), (expected_output))
]
*)

(* Q1 *)
(* TODO: Write a good set of tests for compress *)
let compress_tests = [
  (([A;A]), ([(2,A)]));
  (([A;A;A;C;G]), ([(3,A);(1,C);(1,G)]));
  (([A;T]), ([(1,A); (1,T)]));
  (([A]), ([(1,A)]));
  (([]), ([])); 
]

(*List.nth l ((aux 1 x t)+1)*)
let rec aux counter (letter:nucleobase) (l':nucleobase list) : int = match l' with
  | [] -> counter 
  | x::t -> if x = letter then aux (counter+1) letter t else counter
 
let rec truncate (k:int) (l:nucleobase list) : (nucleobase list) = match l with
  | [] -> l
  | x::t -> if k=0 then l else truncate (k-1) t
  
(* TODO: Implement compress. *)
let compress (l : nucleobase list) : (int * nucleobase) list =
  let rec compress_rec (l : nucleobase list) = match l with
    | [] -> []
    | x::t -> (aux 1 x t , x)::compress_rec (truncate (aux 1 x t) l)
  in compress_rec l
  
  
  
(* TODO: Write a good set of tests for decompress *)
let decompress_tests = [
  (([(2,A)]),([A;A]));
  (([(3,A);(1,C);(1,G)]), ([A;A;A;C;G]));
  (([(1,A); (1,T)]),([A;T]));
  ( ([(1,A)]),([A]));
  (([]), ([]));
]

(* TODO: Implement decompress. *)
let rec decompress (l : (int * nucleobase) list) : nucleobase list = match l with
  | [] -> []
  | (0,_)::t -> decompress t
  | (n,x)::t -> x::decompress ((n-1,x)::t) 


(* Q2 *)
(* TODO: Write a good set of tests for eval *)
let eval_tests = [
  ((MULT (PLUS (FLOAT 2.2, FLOAT 3.3), FLOAT 5.0)) , (27.5));
  ((DIV ((FLOAT 3.3), SIN(FLOAT 2.2))), (4.08165080810473224));
  ((FLOAT 3.0) , (3.0));
  ((DIV (FLOAT(1.0) , COS(FLOAT(0.0)))) , (1.0));
  ((EXP(FLOAT(1.0))), (2.71828182845904509));
  ((DIV (EXP(FLOAT(1.0)) , FLOAT(0.0))) , (infinity));
  ((MULT (DIV (FLOAT(10.0), FLOAT(1.0)) , COS(FLOAT(0.0)))) , (10.0));
  ((MINUS (FLOAT 2.0 , FLOAT 2.0)) , (0.0));
  ((SIN(FLOAT 1.0)) , (0.841470984807896505));
] 

(* TODO: Implement eval. *)
let rec eval e = match e with
  | FLOAT n -> n
  | PLUS (l,r) -> eval l +. eval r
  | MINUS (l,r) -> eval l -. eval r
  | MULT (l,r) -> eval l *. eval r
  | DIV (l,r) -> eval l /. eval r
  | SIN n -> sin(eval n)
  | COS n -> cos(eval n)
  | EXP n -> exp(eval n) 
  

(* TODO: Write a good set of tests for to_instr *)
let to_instr_tests = [
]
(*_ (l,r) ->  (to_instr l); (to_instr r); x::s*)

(* TODO: Implement to_instr. *)
let rec to_instr e = match e with 
  | FLOAT n -> n
  | PLUS (l,r) -> (to_instr l); x::(to_instr r)

(* TODO: Write a good set of tests for instr *)
let instr_tests = [
]


(* TODO: Implement to_instr. *)               
let instr i s = 
  raise NotImplemented


(* TODO: Write a good set of tests for prog *)
let prog_tests = [
]

(* TODO: Implement prog. *)
let prog instrs = 
  raise NotImplemented
