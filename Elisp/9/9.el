;; A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
;; a^2 + b^2 = c^2
;; For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
;; There exists exactly one Pythagorean triplet for which a + b + c = 1000.
;; Find the product abc.

(defun is-nat (n)
  " Checks if number is natural "
  (let ((rn (ffloor n)))
    (if (= (/ n rn) 1.0)
        t 
        nil
    )
  )
  )


(defun euler-9 ()
  (let ((a 0)(b 0)(c 0) (flag t))

    ;; a while
    (while flag
      (setq b 0)
      (setq a (+ 1 a))

      ;; b while
      (while (and (< b a) flag) 
        (setq b (+ 1 b))
        (setq c (sqrt ( + (* a a) (* b b))))
        (if (and (is-nat c) (= (+ a b c) 1000)) (setq flag nil))
      )
  )

    (kill-new (format "%d" (* a b c)))
 )
)

(euler-9)
