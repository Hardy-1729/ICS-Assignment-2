let rec gcd_subtraction a b =
  if a = b then a
  else if a > b then gcd_subtraction (a - b) b
  else gcd_subtraction a (b - a);;


let () = Printf.printf "GCD(56, 18) = %d\n" (gcd_subtraction 56 18);;
