let rec gcd_remainder a b =
  if b = 0 then a
  else gcd_remainder b (a mod b);;

(* Example usage *)
let () = Printf.printf "GCD(48, 18) = %d\n" (gcd_remainder 48 18);;
