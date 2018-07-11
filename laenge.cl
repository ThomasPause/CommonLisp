
;;;Anzahl Einzellisten in der Liste
(defun list_count(liste)
  (if liste
    (1+ (list_count (cdr liste)))
    0))

;;;Summe Anzahl der Elemente in den Einzellisten
(defun elem_single_list(liste)
  (cond 
    ((eq (list_count liste) 1)
    	(list_count (car liste)))
    ((eq (list_count liste) 2)
    	(+ (list_count (car liste)) (list_count (cadr liste))))
  (t
    (+ (list_count (car liste)) (elem_single_list (cdr liste))))))

;;;Listen-Laengen-Durchschnitt berechnen
(defun mitlaenge (liste)
  (/ (elem_single_list liste) (list_count liste)))

;;;Test des Programms
(format t "Durchschnitt = ~a ~%" (mitlaenge `((1 2 3) (A B) (S ta X 2))))
(format t "Durchschnitt = ~a ~%" (mitlaenge `((8 h hg u8) () (A B C) (60 Jj 8k X 7 2))))
(format t "Durchschnitt = ~a ~%" (mitlaenge `(() () (A B C D) (60 Jj 8k X 7 2))))
(format t "Durchschnitt = ~a ~%" (mitlaenge `(() () (A B C D) ())))
