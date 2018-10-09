;; The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
;; 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
;; Let us list the factors of the first seven triangle numbers:
;;      1: 1
;;      3: 1,3
;;      6: 1,2,3,6
;;     10: 1,2,5,10
;;     15: 1,3,5,15
;;     21: 1,3,7,21
;;     28: 1,2,4,7,14,28
;; We can see that 28 is the first triangle number to have over five divisors.
;; What is the value of the first triangle number to have over five hundred divisors?

;; The number of divisors of a number, N, is: (a+1)(b+1)... where a,b.. are the exponents of the prime divisors of the number

(defun list-factorize(n)
  "Returns a list of the facotrizied numbers"
  (let ((i 1) (buff ()))
    (while (< i n)
      (setq i (+ 1 i))
      (while (= (% n i) 0)
        (setq buff (cons i buff))
        (setq n (/ n i))
        )
      )
      (reverse buff)
    )
)

;; (list-factorize 28)                     

(defun uniques-list (list)
  "Returns list of unique items"
(let ((l 0)(al ()))
  (dolist (a list al)
    (if (not (member a al))
        (setq al (cons a al))
        )
    )
  al
  )
)

;; (uniques-list '(1 2 3 4 1 2 312 31))

(defun number-elements (el fact-list)
  "Return the number of elements el in fact-list"
  (let ((i 0))
    (dolist (e fact-list i)
      (if (= e el) (setq i (+ i 1)))
      )
    i
      )
    )

(defun get-n-div (n)
  "Returns the number of divisors."
  (let ((fact-list (list-factorize n)) unique-fact)
    (setq unique-fact (uniques-list fact-list))
    (let ((div-count 1))
      (dolist (el unique-fact div-count)
        (setq div-count(* div-count (+ 1 (number-elements el fact-list))))
        )
    div-count
      )
    )
  )

(list-factorize  76576500)
(get-n-div 76576500)

(defun euler-12 (max)
  (let ((i 0) (N 0) (n-div 0) (step 10000))
    (while (<= n-div max)
      (if (= (% i step) 0) (print (format "i:%d N:%d n-div:%d" i N n-div)))
      (setq N (+ i N))
      (setq i (+ 1 i))
      (setq n-div (get-n-div N))
      )
    (kill-new (format "%d" N))
    (write-region (format "%d\n" N) nil "ans" 'append)
    N
  )
)
(euler-12 500)


