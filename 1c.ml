let rec extended_gcd a b =
    if b = 0 then (a, 1, 0)
    else
      let (gcd, x1, y1) = extended_gcd b (a mod b) in
      let x = y1 in
      let y = x1 - (a / b) * y1 in
      (gcd, x, y);;
  
  (* Example usage *)
  let () =
    let (gcd, x, y) = extended_gcd 48 18 in
    Printf.printf "GCD(48, 18) = %d, x = %d, y = %d\n" gcd x y;;
  