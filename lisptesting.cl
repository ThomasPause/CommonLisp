	;;;; hier gibts verschiedene Tests fuer CLISP

(setq *print-case* :capitalize) ;setzt die Ausgabe auf case sensitive

(defvar *age* 18) ;definiert globale? Variable

(defun get-school (age)
  (case age 
    (5 (print "Kindergarten"))
    (6 (print "First Grade"))
    (otherwise (print "middle school")))
  )  ;Funktionsdefinition

;; es gibt if, when, unless, case, cond und innerhalb and, not, or

(get-school *age*) ;funktionscall



