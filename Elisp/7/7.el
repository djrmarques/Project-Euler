;; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
;; What is the 10 001st prime number?
;; Answer: 104743

(defun is-prime(n)
  "Checks in number is prime, Returns t or nil"
  (let ((i 2)(flag t))
    (while (and (< i n) flag)
      (if (= (% n i) 0)
          (setq flag nil)
          )
      (setq i (+ 1 i))
      )
    flag
     )
    )

  

(defun euler-7 (n)
  "Returns the nth prime number"
  (let ((j 1)(counter 0))
    (while (< counter n)
      (setq j (+ 1 j))
      (if (is-prime j) (setq counter (+ counter 1)))
      )
    (print (format "%d" j))
    )
  )

(euler-7 10001)
