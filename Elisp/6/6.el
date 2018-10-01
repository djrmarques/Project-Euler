;; The sum of the squares of the first ten natural numbers is,
;; 1^2 + 2^2 + ... + 10^2 = 385
;; The square of the sum of the first ten natural numbers is,
;; (1 + 2 + ... + 10)^2 = 55^2 = 3025
;; Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
;; Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

;; Answer: 25164150

(setq ANS 25164150)

;; Checks if the answer is correct
(defun compare-solution(ans ANS)
  (if (eq ANS ans) (message "CORRECT") ( message "WRONG"))
  ) 

(defun euler-6 (N)
  (let ((sum-sq 0)(sq-sum 0)(i 0)(diff 0))

    (while (<= i N)
      (setq sum-sq (+ sum-sq (* i i)))
      (setq sq-sum (+ sq-sum i))
      (setq i (+ 1 i))
      )

    (setq sq-sum (* sq-sum sq-sum))
    (setq diff (- sq-sum  sum-sq))
    (compare-solution diff ANS)
    )
  )

(euler-6 100)

