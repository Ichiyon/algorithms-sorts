#lang racket


;;  switch-zero (node switch-index zero-index) -> node
;;
;;  takes in a node and an index and switches the 0 with the
;;  number at the index (also updates the depth)
;;  switches any numbers actually, will update it later
;;
(define (switch-zero node1 switch-index zero-index)
  (set! parent-tmp (node-state node1))
  (set! tmp (list-ref (node-state node1) switch-index))
  (node parent-tmp
	 (list-set
	  (list-set (node-state node1) switch-index 0) zero-index tmp)
	 (+ 1 (node-depth node1))
	 (node-heuristic node1)))
;;  I think i changed this on my main computer already
;;  20170307 192121







(define list-nums '(4 3 5 1 2))

(list-tail (+ i 1) list-nums)

;; swap-list-element

#|
  can use this to get the rest of the list after the index so you can
  compare it
|#

;; gets the smallest number from the list
(apply min list-nums)


(define (iterate-list-selection list-nums)
  (let ((i 0))
  (if (|#end of list   i = list-length?#|)
      return ordered list)
  else
  ;; (swap the number with the first one)
  ;;  iterate to next 
  (iterate-list-selection (list-tail (+ 1 i) list-nums)))
