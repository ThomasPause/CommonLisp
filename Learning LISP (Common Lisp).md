# Learning LISP (Common Lisp)
Quelle: [Practical Common Lisp](http://www.gigamonkeys.com/book/)
[Input/Output](https://www.tutorialspoint.com/lisp/lisp_input_output.htm)
* Hello World: `(print "Hello World")`
---
## Hello world
### Einfache Ausgabe
`(format t "Hello world")`
+ `format` nimmt beliebig viele Argumente, aber zwei sind Pflicht:
    + Wohin soll der Output geschickt werden? (Wird `t` angegeben, wird es auf die Standardausgabe ausgegeben)
    + Was soll ausgegeben werden (welcher String)?
+ Rückgabewert ist `NIL`, wenn das Ziel non-`NIL` ist. Sonst wird ein String zurückgegeben. [(Quelle)](http://www.lispworks.com/documentation/lw50/CLHS/Body/f_format.htm)
### Ausgabe über eine Funktion
+ Definition:
`(defun hello-world () (format t "Hello world"))`
+ Aufruf: `(hello-world)`
### Speicherung in einer Datei
+ Konvention: Dateiendung ist `.cl`
+ In die Datei werden alle Definitionen geschrieben
+ Laden der Datei: `(load "Dateiname")`
+ Um zwischendurch zu kompilieren: `(compile-file "Dateiname")`

## Grundsätzliche Funktionen
* Programm-Aufruf: `clisp dateiname.cl`
* Semikolon zeigt einen Kommentar an und gilt bis Ende der Zeile
* CLisp arbeitet mit Listen und Atomen 
* Listen werden durch Klammern begrenzt, Elemente innerhalb durch whitespace getrennt
* alles andere sind Atome
* () ist die leere Liste (NIL), Liste und Atom zugleich 
* Listen koennen beliebig verschachtelt werden (symbolic expressions)
* LISP nutzt ein Typensystem fuer Datenobjekte (nicht fuer Variablen!)
* Ausgabe mit type-of wie folgt:
```
(type-of 123)  ;integer
(type-of 1/5)  ;ration
(type-of 1.0)  ;float 
(type-of 1.0d) ;double
(type-of #c(1 2)) ;complex
(type-of t)   ;bool (es gibt T fuer true und NIL fuer false)
(type-of #\a)  ;character
(type-of "str") ;String
(type-of `foobar) ;symbol
```
* Operationen auf Zahlen: +-*/mod 
	* Bsp.: `(*9 8 7 6 5 4 3 2 1)` 9!=362880
* Vergleiche auf Zahlen: < > <= >= /= eq equal
* Boolsche Ausdruecke: not and or 
* Auswertung und Verhinderung der Auswertung: `eval quote`
* Operationen auf Listen: 
	* `cons append  ;Erzeugung`
	* `car cdr  ;Zerlegung`
	* `atom  ;ist etwas ein Atom?`
	* `apply  ;wendet Funktion sukzessive auf Liste an`
+ `list` gibt eine Liste der Argumente zurück.
    + `(list 1 2 3)`
    Output: `(1 2 3)`
+ Erweiterung: Property list (Plist)
    + `(list :a 1 :b 2 :c 3)`
    Jeder Eintrag gibt an, was der nächste Eintrag in der Liste ist.
    die Plist ist ein simples key-value mapping, also quasi eine Hashmap
    für arme Leute. Ein Key wird mit einem `:` gekennzeichnet.
    + Um die Werte zurück zu geben, wird `getf` benutzt.
    `getf` nimmt eine Plist und gibt den Wert von einem bestimmten Key.
    + `(getf (list :a 1 :b 2 :c 3) :a)`
    Output: `1`
    + `(getf (list :a 1 :b 2 :c 3) :c)`
    Output: `3`
	
## Funktionen
* Funktionsdefinitionen sind Listen mit folgendem Aufbau:
```Clisp=
(defun funktionsname (argumente)
	"Dokumentation der Funktion, vgl. (describe `fktname)"
	body
)
```
* vor Funktionsaufruf werden alle Argumente evaluiert

## Variablen
* sind Bezeichner für Speicherstellen bzw. Werte
* sind untypisiert in LISP
* eine Variable kann unterschiedlich typisierte Werte annehmen 
* auch Funtionsdefinitionen koennen als Variablen uebergeben werden
* lokale Variablen haben Gueltigkeitsbereich (Scope)
* globale Variablen ueberall sichtbar und per Konvention wie folgt deklariert: 
	* `*myGlobalVar*`

## Symbole
+ Symbole sind (Daten-)Objekte, welche mit einem String als Namen repräsentiert werden.
+ Ein Symbol ist keine Variable, sondern eine Datenstruktur
+ Dementsprechend steht hinter einem Symbol ein Name, ein Wert, eine Funktion, ...

## Special operators
TODO: Dinge, die von den üblichen Operatoren nicht mehr erledigt werden können

## Macros

## Wahr, falsch und Gleichheit

## Codeformatierung