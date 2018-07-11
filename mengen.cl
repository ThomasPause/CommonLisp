;;;Programm fuer Mengenoperationen

(defun vereinigung (liste1 liste2)
  	(sort (remove-duplicates (append liste1 liste2))#`<))

(defun schnitt (liste1 liste2)
  (cond 
    	((null liste1) nil)
	((member (car liste1) liste2)
	 (cons (car liste1) (schnitt (cdr liste1) liste2)))
	(t (sort (remove-duplicates (schnitt (cdr liste1) liste2))#`<))))

(defun differenz (liste1 liste2)
  (cond ((null liste1) nil)
	((member (first liste1) liste2 		;first liste1 = car liste1
	(differenz (rest liste1) liste2))	;rest liste1 = cdr liste1
	(t (sort (remove-duplicates(cons (first liste1) (differenz (rest liste1) liste2)))#`<)))))

(defun potenz (liste)
  (if (null liste)
    `(())
    (fuegeHinzu (car liste) (potenz (cdr liste)))))

(defun fuegeHinzu (x potenzmenge)
  (if (null potenzmenge)
    nil
    (cons (car potenzmenge)
	  (cons (cons x (car potenzmenge))
		(fuegeHinzu x (cdr potenzmenge))))))

;;;Test des Programms
(format t "Vereinigung: ~a ~%" (vereinigung `(1 2 3 4 5 6) `(7 8 9 1 2 3)))
(format t "Schnittmenge: ~a ~%" (schnitt `(1 2 3 4 5 6) `(7 8 9 1 2 3)))
(format t "Differenz: ~a ~%" (differenz `(1 2 3 4 5 6) `(7 8 9 1 2 3)))
(format t "Potenzmenge: ~a ~%" (potenz `(1 2 3 4 5 6)))
