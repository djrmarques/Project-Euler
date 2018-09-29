;; The prime factors of 13195 are 5, 7, 13 and 29.
;; What is the largest prime factor of the number 600851475143 ?

(defun high-factor(MAX)
  (let ((i 2))
    (while (and (< (* i i) MAX))
      (while (= (% MAX i) 0)
          (setq MAX (/ MAX i))
          (print (format "%d" MAX))
          )
      (setq i (+ i 1))
      )
   )
    (kill-new ( format "%d"  MAX ))
    )
  
(high-factor 600851475143)



