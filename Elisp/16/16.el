;; 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
;; What is the sum of the digits of the number 2^1000?

(defun sum-digits (d)
  "Returns the sum of the digits"
  )

(defun euler-16(n)
  (let ((i 0) (v 1) (sum 2))
    (while (< i n)
      (setq v (* v 2))
      (setq i (+ 1 i))
      )

    ;; Calculate the sum of the digits
    )
  )

(euler-16 1000)


