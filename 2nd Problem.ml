(* 1st code *)
let rec factorial (n : int) : int =
  if n = 0 then 1  (* Fix: Changed 0 to 1 *)
  else n * factorial (n - 1);;

(*2nd Code*)

let rec fibonacci (n : int) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else fibonacci (n - 1) + fibonacci (n - 2);;  (* Fix: Removed +1 *)

(*3rd Code*)

let rec gcd a b =
  if a = b then a
  else if a > b then gcd (a - b) b  (* Fix: Added parentheses *)
  else gcd a (b - a);;  (* Fix: Corrected recursive call *)

