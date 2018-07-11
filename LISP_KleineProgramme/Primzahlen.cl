(defun divtest (number divisor)
    ; teste Division durch die Zahlen divisor, divisor+1,...,sqrt(number)
    ; gib true zurück, falls keine Division ganzzahlig, sonst nil
    (if (> (* divisor divisor) number )
       't
       (if (eq (mod number divisor) 0 )
          nil
          (divtest number (+ divisor 1))
        )
    )
)
;
;
(defun isprime2 (number)
    ; teste ob number >=2 Primzahl ist
    ; Gib T zurück wenn ja, sonst NIL
    (divtest number 2 )
)