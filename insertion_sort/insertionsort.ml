let rec insert (x: int) (l: int list) = 
  match l with 
  | [] -> [x]
  | y::l' -> if (x <= y) then x::y::l' else y :: (insert x l');;

let rec isort (l : int list) : int list = 
  match l with 
  | [] -> [] 
  | x::l' -> insert x (isort l');;

let rec insert (x: int) (l: int list) = 
  match l with 
  | [] -> [x]
  | y::l' -> ((*Raml.tick(1.0);*)if (x <= y) then x::y::l' else y :: (insert x l'));;

let rec isort (l : int list) : int list = 
  match l with 
  | [] -> [] 
  | x::l' -> insert x (isort l');;

(* for ocaml use, to check correctness *)
(* let _ = print_string (String.concat " " (List.map string_of_int (isort [4;5;2;5;1])));; *)
let _ = isort [4;5;2;5;1];;