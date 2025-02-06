let rec gcd_remainder a b =
  if b = 0 then a
  else gcd_remainder b (a mod b);;

let () = Printf.printf "GCD(56, 18) = %d\n" (gcd_remainder 56 18);;
