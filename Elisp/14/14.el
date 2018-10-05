;; The following iterative sequence is defined for the set of positive integers:
;; n → n/2 (n is even)
;; n → 3n + 1 (n is odd)
;; Using the rule above and starting with 13, we generate the following sequence:
;; 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
;; It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
;; Which starting number, under one million, produces the longest chain?

(defun next-n (n)
  ;; Checks if it is odd or even
  (if  (= (% n 2) 0) (/ n 2) (+ (* 3 n) 1))
  )

(defun run-chain (N)
  "Returns the number of elements"
  (let ((n-elements 1))
    (while (> N 1)
      (setq N (next-n N))
      (setq n-elements (+ n-elements 1))
      )
    n-elements
    )
  )

;; (run-chain 13)


(defun euler-14 ()
  (let ((i 1) (max 0) n (step 1000) ans)
    (while (< i 1000000)
      (setq n (run-chain i))
      (if (> n max) (progn (setq max n) (setq ans i)))
      (setq i (+ 1 i))
      (if (= (% i step) 0) (print (format "i:%d\n" i)))
      )
    (kill-new (format "%d" ans))
    (write-region (format "%d\n" ans) nil "ans" 'append)
    )
  )

(euler-14)
