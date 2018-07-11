;;;;Programm fuer die Caesar-Verschluesselung

(defun crypter (char shift)
  (let* 
    (
     (c (char-code char))
     (lower (char-code #\a))
     (upper (char-code #\A))
     (base (cond ((<= lower c (char-code #\z)) lower )
		 ((<= upper c (char-code #\Z)) upper )
		 (nil))
	   )
     )
    (if base (code-char (+ (mod (+ (- c base) shift) 26) base)) char)
    )
  )

(defun caesar (text &optional (shift 13))
  (map `string #` (lambda (c) (crypter c shift))text)
  )

(setq pipe (read-line))

;;;Test des Programms
(format t "~%eingelesener Text: ~a~%~%" pipe)
(format t "verschluesseln mit Rot13: ~a ~%" (caesar pipe))
(format t "entschluesseln mit Rot13: ~a ~%~%" (caesar (caesar pipe)))
