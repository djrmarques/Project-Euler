;; A palindromic number reads the same both ways.
;; The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
;; Find the largest palindrome made from the product of two 3-digit numbers.

(defun is-palindromic (n)
  "Returns bool"

     )

(defun 4-euler ()
  (let ((n1 999)(n2 999)(MAX 0)(ph 0))
  

  ;; Double while loop like a brainlet
  (while (> n1 0)
    (while (> n2 0)

      (setq ph (* n2 n1))
      (if (and ( > ph MAX) (is-palidromic ph))
          (setq MAX ph)
          )
      )
    )
  (kill-new (format "%d" MAX))
   ) 
  )
