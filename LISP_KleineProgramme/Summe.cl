; Summe aller Zahlen einer Liste
; rekursiv durch Abtrennen des jeweils ersten Elements
; (summe nil) -> 0
; (summe '(3 5 2)) -> (+ 3 (summe '(5 2))) -> ... -> 10
;
(defun summe (L)
   (if (eq L nil) ; leere Liste?
       0                                       ; summe(nil) -> 0
       (+ (car L) (summe (cdr L))) ; head+summe(tail)
   )
)