;gnu clisp 2.49

(defvar *db* nil)

(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(defun add-record (cd) (push cd *db*))

(defun dump-db ()
    (dolist (cd *db*)
        (format t "~{~a:~10t~a~%~}~%" cd)))

(defun prompt-read (prompt)
    (format *query-io* "~a: " prompt)
    (force-output *query-io*)
    (read-line *query-io*))

(defun prompt-for-cd ()
    (make-cd
    (prompt-read "Title")
    (prompt-read "Artist")
    (or (parse-inter (prompt-read "Rating") :junk-allowed t) 0)
    (y-or-n-p "Ripped [y/n]")))

(defun add-cds ()
    (loop (add-record (prompt-for-cd)))
    if (not (y-or-n-p "Another? [y/n])" (return))))

(add-record (make-cd "Memories" "Maroon 5" 7 t))
(add-record (make-cd "Roses" "Kathy Mattea" 7 t))
(add-record (make-cd "Fly" "Dixie Chicks" 8 t))
(add-record (make-cd "Home" "Dixie Chicks" 9 t))

(add-cds)

(dump-db)
