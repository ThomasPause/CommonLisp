;programm zur berechnung des Binomialkoeffizienten
(defun fakultaet (n)
  (let ((f 1))
    (dotimes (i n)
      (setf f (* f (+ i 1))))
    f))

(defun binomialkoeff (n k)
(/ (fakultaet n) (* (fakultaet k) (fakultaet (- n k)))))
