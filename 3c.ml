let rec collatz_steps x =
  if x = 1 then 0  
  else if x mod 2 = 0 then 1 + collatz_steps (x / 2)  
  else 1 + collatz_steps (3 * x + 1);;  

let () =
  Printf.printf "Collatz steps for 14: %d\n" (collatz_steps 14);