;; The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
;; Find the sum of all the primes below two million.


(defun is-prime(n)
  "Checks if n is prime"
  (if (and (or (not (= (% n 2) 0)) (= n 2)) (or (not (= (% n 5) 0)) (= n 5))) 

      (let ((flag t) (j 2))
        (while (and (<= j (/ n 2)) flag)
          (if (= (% n j) 0) (setq flag nil) (setq j (+ 1 j)))
          )
       flag
       )
    nil
      )
  )

(defun euler-10 (MAX)
  (let ((i 1)(sum 0))
    (while (< i MAX)
      (setq i (+ i 1))
      (if (is-prime i) (setq sum (+ sum i)))
    )
    (kill-new (format "%d" sum))
    (message "%d" sum)
   )
  )

(euler-10 2000000)

142913828922
