;; 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
;; What is the sum of the digits of the number 2^1000?



(defun sum-digits (d)
  "Returns the sum of the digits"
  (let ((i 0) (sum 0))
    (while (< i (length d))
      ;; (print (aref d i))
      (setq sum (+ sum (- (aref d i) 48)))
      (setq i (+ 1 i))
    )
    sum
  )
)

;; (sum-digits "5555")

(defun power-sum (e)
    ;; POWER
  (let ((i 1) (v "2"))
    (while (< i e)
      (setq v  (calc-eval (format "%s * 2" v)))
      (setq i (+ 1 i))
      )
    (sum-digits v)
    )
  )


(defun euler-16(n)
  (let (v)
    (setq v (power-sum n))
    (kill-new (format "%d" v))
    (print v)
    )
  )

(euler-16 1000)




