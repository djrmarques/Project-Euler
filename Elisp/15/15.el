;; Theone with the arrows
;; Based on this http://code.jasonbhill.com/python/project-euler-problem-15/

;; def route_num(cube_size):
;;     L = [1] * cube_size
;;     for i in range(cube_size):
;;         for j in range(i):
;;             L[j] = L[j]+L[j-1]
;;         L[i] = 2 * L[i - 1]
;;     return L[cube_size - 1]



(defun euler-15 (size)
  (let (v (i 0))
    (setq v (make-vector size 1))
    ;; Iterate trough the arrau
    (while (< i size)
      ()


      (setq i (+ i 1))
      )
    v
    )
  )


(euler-15 2)
