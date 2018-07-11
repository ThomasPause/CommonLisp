; Funktion (power basis exponent) berechnet 
; basis hoch exponent
; für natuerliche Zahl b
;
(defun power (basis exponent)
    (if (> exponent 0) 
        (* basis (power basis (- exponent 1)))
        1
    )
)