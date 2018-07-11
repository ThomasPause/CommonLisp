; Dynamische Bindung von a als globale Variable
;
(defvar a 3)
(let ((a 1)) 
  (defun f() a)
)
; Teste mittels (let ((a 2)) (f))!
; Es ergibt sich nun 2!