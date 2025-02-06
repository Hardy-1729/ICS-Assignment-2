(*
   Normally, to calculate `x^n`, we multiply `x` by itself `n` times, which is slow.
   Instead, we use a better method:
   
   - If `n` is even, we first compute `x^(n/2)` and then square it.
   - If `n` is odd, we first compute `x^(n-1)`, then multiply by `x`.

   This reduces the number of multiplications and makes the process much faster.
   Instead of taking `n` steps, it only takes about log(n) steps! because change in log(n) slows down as n increases.

   What This Code Does:
   This function calculates `x^n` (x raised to the power of n) efficiently.

   Base case: If `n = 0`, return `1` (because any number raised to 0 is 1).  
   If n is even: Compute `x^(n/2)` once and then square it.  
   If n is odd: Compute `x^(n-1)`, then multiply by `x`.  

   This reduces the number of multiplications, making it much faster than the normal method.
*)


let rec power x n =
  if n = 0 then 1
  else if n mod 2 = 0 then
    let half = power x (n / 2) in half * half
  else x * power x (n - 1);;


Printf.printf "2^10 = %d\n" (power 2 10);;