;; 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
;; What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

(defun check (n)
  (let ((l 1)(flag t))
    (while (and (<= l  20) flag)
      (if (= (% n l) 0) (setq l (+ 1 l)) (setq flag nil))
      )
    flag
    )
  )

;; (check 252)


(defun 5-euler ()
  (let ((i 1) (flag t)) ;; i is a counter
    (while flag
      (if (check i) (setq flag nil) (setq i (+ i 1)))
      )
    (kill-new (format "%d" i))
    )
  )
   
(5-euler)
