; Liste der Zahlen von n bis 1, rekursiv
; durch Voranstellen von n den Zahlen von n-1 bis 1
;
(defun countdown (n)
   (if (eq n 0)                               ; keine Zahlen?
       nil                                       ; leere Liste
      (cons n (countdown (- n 1))) ; n voranstellen
   )
)