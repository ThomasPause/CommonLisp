;;;;Programm zur Primzahlberechnung
 
(defun create-list(start end step)
	(if (> start end)
	  (list)
	  (cons start (create-list (+ start step ) end step))))

(defun cross_out (create-list start step)
  (cond ((null create-list) create-list)
	((= (car create-list) start) (cross_out (cdr create-list) (+ start step) step))
	((> (car create-list) start) (cross_out create-list (+ start step) step))
	((cons (car create-list) (cross_out (cdr create-list) start step)))))

(defun primenums (end)
  (let ((stop (isqrt end)))
    (defun sieb (create-list)
      (let ((x (car create-list)))
	(if (> x stop)
	  create-list
	  (cons x (sieb (cross_out (cdr create-list) (* x x) x))))))
      (sieb (create-list 2 end 1))))

;;;Test des Programms
(format t "Primzahlen bis 52: ~a ~%" (primenums 52))
(format t "Primzahlen bis 2: ~a ~%" (primenums 2))
(format t "Primzahlen bis 100: ~a ~%" (primenums 100))
;;test auf Parameter 1 ergibt NIL, da es keine Primzahl vor 2 gibt
;(format t "Primzahlen bis 1: ~a ~%" (primenums 1))
