(* Trick was to first change Word --> Word + "," *)
let sentence = (let commaWord = word ^ "," in
                let aux = commaWord ^ commaWord in 
                let b = aux ^ aux in
                b ^ b ^ word)
;;

