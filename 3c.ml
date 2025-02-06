(*
   - Start with any positive number `x`.
   - If `x` is even, divide it by `2`.
   - If `x` is odd, multiply by `3` and add `1`.
   - Repeat until you reach `1`.

   Mathematicians believe that every number eventually reaches `1`, but
   nobody has been able to prove it for all numbers!

   This function counts how many steps it takes for a given number to reach `1`.
*)
let rec collatz_steps x =
  if x = 1 then 0  
  else if x mod 2 = 0 then 1 + collatz_steps (x / 2)  
  else 1 + collatz_steps (3 * x + 1);;  

let () =
  Printf.printf "Collatz steps for 14: %d\n" (collatz_steps 14);
