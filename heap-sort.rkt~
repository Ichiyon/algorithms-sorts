#lang racket


(define list-nums '#(1 2 3 4 5))

;;  max-heapify: vector -> vector
;;
;;  performs a max heapify on the list
;;  every parent is larger than it's children
;;
(define (max-heapify list1 index)
  (cond
    ((and (< parent left-child) (< parent right-child)) (swap parent (max left-child right-child)))
    ((< parent left-child) (swap parent left-child))
    ((> parent right-child) (swap parent right-child))))


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