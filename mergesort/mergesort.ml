let rec merge (l: int list) (r: int list) : int list = 
  match l with 
  | [] -> r 
  | a::l' -> (match r with 
    | [] -> l
    | b::r' -> if (a <= b) then a::(merge l' r) else b::(merge l r') );;

(* lo is inclusive, hi is exclusive  *)
let rec msort (l: int list) (lo:int) (hi:int): int list = 
  let len = hi - lo in
  let mid = lo + len/2 in 
  if (len <= 1) then [List.nth l lo] else  
  let left = msort l lo mid in 
  let right = msort l mid hi in
  merge left right

let mergesort (l: int list) = msort l 0 (List.length l);;

let _ = mergesort ([4;3;2;1])
let _ = print_string (String.concat " " (List.map string_of_int (mergesort [4;5;2;5;1])));;


(* 
Error: analysis failure.


Resource Aware ML, Version 1.4.1, July 2018

File "/tmp/tmpjsLKj_.raml", line 12, characters 22-30:
Error: Unbound module List
>> Fatal error: 
Uncaught exception:
  
  Misc.Fatal_error

Raised at file "format.ml" (inlined), line 242, characters 35-52
Called from file "format.ml", line 469, characters 8-33
Called from file "format.ml", line 484, characters 6-24
 *)