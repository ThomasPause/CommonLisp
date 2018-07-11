; Lexikalische Bindung von a
;
(let ((a 1)) 
  (defun f() a)
)
; Teste mittels (let ((a 2)) (f))
; Es ergibt sich 1 wegen der lexikalischen Bindung
; => maßgebend ist der Wert im Scope von f!
