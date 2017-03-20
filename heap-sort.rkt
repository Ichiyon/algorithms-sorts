#lang racket


(define list-nums '#(1 2 3 4 5))

;;  max-heapify: vector -> vector
;;
;;  performs a max heapify on the list
;;  every parent is larger than it's children
;;
(define (max-heapify list1 index)
  (cond
    ((and (< index (find-left-child list1 index))
          (< index (find-right-child list1 index))))
     (swap index (max (find-left-child list1 index) (find-right-child list1 index)))
    ((< index (find-left-child list1 index) (swap index (find-left-child list1 index))))
    ((> index (find-right-child list1 index) (swap index (find-right-child list1 index))))))


;; parent = i/2
;; right-child = 2i + 1
;; left-child = 2i

;;  find-left-child: list number -> value
;;
;;  find the left child of the current index (2i)
;;
(define (find-left-child list1 index)
  (vector-ref (* 2 index)))

;;  find-right-child
;;
;;  find the right child of the current index (2i + 1)
;;
(define (find-right-child list1 index)
  (vector-ref (+ 1 (* 2 index))))

;;  find-parent: list number -> value
;;
;;  find the parent of the current index
;;
(define (find-parent list1 index)
  (vector-ref (floor (/ i 2))))


;;  switch-zero (node switch-index zero-index) -> node
;;
;;  takes in a node and an index and switches the 0 with the
;;  number at the index (also updates the depth)
;;  switches any numbers actually, will update it later
;;
(define (switch-num-vec vector1 switch1 switch2)
  (let ((tmp (vector-ref vector1 switch2)))
    (vector-set! (vector-set! vector1 switch2 (vector-ref vector1 switch1)) switch1 tmp)))