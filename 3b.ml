(*
   This is a fast-growing mathematical function.
   It is an example of a function that uses deep recursion.

   - If `m = 0`, the function just adds 1 to `n` (A(0, n) = n + 1).
   - If `m > 0` and `n = 0`, we call `A(m-1, 1)`.
   - If `m > 0` and `n > 0`, we call `A(m-1, A(m, n-1))`.

   This function grows so fast that even small numbers give huge results!
   It is often used to test how well computers handle recursion.
*)


let rec ack m n =
  if m = 0 then n + 1
  else if n = 0 then ack (m - 1) 1
  else ack (m - 1) (ack m (n - 1));;

let () =
  Printf.printf "A(2, 2) = %d\n" (ack 2 2);;
