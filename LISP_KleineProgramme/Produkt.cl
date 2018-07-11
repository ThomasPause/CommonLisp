; Produkt aller Zahlen einer Liste
; rekursiv durch Abtrennen des jeweils ersten Elements
; (produkt nil) -> 1
; (produkt '(3 5 2)) -> (* 3 (produkt '(5 2))) -> ... -> 30
;
(defun produkt (L)
   (if (eq L nil) ; leere Liste?
       1                                       ; produkt(nil) -> 1
       (* (car L) (produkt (cdr L))) ; head+produkt(tail)
   )
)