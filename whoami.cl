(defun whoami_1 (n)
    (if (equal n 0) 0
        (+ n (whoami_1 (- n 1)))
    )
)
 
(defun whoami_2 (A B)
    (if (equal A nil) B
        (cons (car A) (whoami_2 (cdr A) (delete (car A) B)))
    )
)
