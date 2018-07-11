; Funktion (pow basis exponent) berechnet 
; basis hoch exponent
; für ganze Zahl exponent
;
(defun POW (basis exponent)
    "Berechne basis^exponent fuer ganzzahligen exponent."
    (if (< exponent 0)
        (/ 1 (POW basis (- 0 exponent)))            ; e<0 => pow(b e) := 1/pow(b 0-e)
        (if (> exponent 0) 
            (* basis (POW basis (- exponent 1)))  ; e>0 => pow(b e) := b * pow(b e-1)
            1                                                       ; e=0 => pow(b 0) := 1
         )
     )
)