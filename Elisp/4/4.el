;; A palindromic number reads the same both ways.
;; The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
;; Find the largest palindrome made from the product of two 3-digit numbers.


(defun is-palindromic (n)
  "Returns bool"
  ;; Converts to string
  (if (string= n (reverse n))
      t ;; If
      nil ;; Else
      )
  )

(defun 4-euler (m)
  ;; Local variables
  (let ((n1 m)(n2 m)(MAX 0)(ph 0))

  ;; Double while loop like a brainlet
  (while (> n1 0)
    (setq n2 m)
    (while (> n2 0)

      (setq ph (* n2 n1))

      ;; If it is palindromic
      (if (and ( > ph MAX) (is-palindromic (format "%d" ph)))
          (setq MAX ph))

      (setq n2 (- n2 1))
      )
    (setq n1 (- n1 1))
    )

  ;; Adds solution to kill-ring 
  (kill-new (format "%d" MAX))

   ) 
  )

(4-euler 999)

