;; Theone with the arrows
(defun euler-15 (size)
  (let (v (i 1))
    ;; Create Vector
    (setq v (make-vector (+ size 1) 1))

    ;; Iterate trough the array
    (while (<= i size)
      (let ((j 1))
        (while (<= j size)
          (aset v j (+ (aref v j) (aref v (- j 1))))

        (setq j (+ 1 j))
       )
      )
      (setq i (+ i 1))
      
  )
    (aref v size)
 )
)
(euler-15 20)

;; 137846528820
