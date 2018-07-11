(print "Hello World")
;Semikolon zeigt einen Kommentar an und gilt bis Ende der Zeile
;CLisp arbeitet mit Listen und Atomen 
;Listen werden durch Klammern begrenzt, Elemente innerhalb durch whitespace getrennt
;alles andere sind Atome
;() ist die leere Liste (NIL), Liste und Atom zugleich 
;Listen koennen beliebig verschachtelt werden (symbolic expressions)

;LISP nutzt ein Typensystem fuer Datenobjekte (nicht fuer Variablen!)
;Ausgabe mit type-of wie folgt 
(type-of 123)  ;integer
(type-of 1/5)  ;ration
(type-of 1.0)  ;float 
(type-of 1.0d) ;double
(type-of #c(1 2)) ;complex
(type-of t)   ;bool (es gibt T fuer true und NIL fuer false)
(type-of #\a)  ;character
(type-of "str") ;String
(type-of `foobar) ;symbol

;Operationen auf Zahlen: +-*/mod
;Vergleiche auf Zahlen: < > <= >= /= eq equal
;Boolsche Ausdruecke: not and or 
;WEITER auf Folie 24 
;(if condition then-form [else-form])


