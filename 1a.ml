let rec gcd_subtraction a b =
  if a = b then a
  else if a > b then gcd_subtraction (a - b) b
  else gcd_subtraction a (b - a);;

(* Example usage *)
let () = Printf.printf "GCD(48, 18) = %d\n" (gcd_subtraction 48 18);;
