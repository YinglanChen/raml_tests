let rec split (l: int list) (pivot: int): int list * int list = 
    match l with 
    | [] -> ([],[])
    | x::l' -> let (less,greater) = split l' pivot
               in if (x < pivot) then (x::less, greater) else (less, x::greater)

let rec qsort (l: int list): int list = 
    match l with
    | [] -> []
    | x::[] -> l
    | x::l' -> let pivot = List.nth l 0 in 
               let (less, greater) = split l' pivot in 
               let ls_sorted = qsort less in 
               let gt_sorted = qsort greater in 
               List.append ls_sorted (x :: gt_sorted)

let _ = qsort([5;4;3;2;1])