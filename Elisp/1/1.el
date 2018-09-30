;; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;; Find the sum of all the multiples of 3 or 5 below 1000.

(defun sum-mult(MAX)
  (let ((i 0)(COUNTER 0))
    (while (<= i MAX)
      (if (or (= (% i 3) 0)(= (% i 5)0))
          (setq COUNTER (+ COUNTER i))
          )
      (setq i (+ 1 i))
      )
    (print  COUNTER)
    (kill-new (format "%d" COUNTER))
    )
  )

(sum-mult 999)

