#lang racket



;;  index-of : list -> number
;;
;;  takes in a list and find what index the element in it is located
;;  (pulled this off of stackoverflow
;;  http://stackoverflow.com/questions/15871042/how-do-i-find-the-index-of-an-element-in-a-list-in-racket)
;;
(define (index-of lst ele)
  (let loop ((lst lst)
             (idx 0))
    (cond ((empty? lst) #f)
          ((equal? (first lst) ele) idx)
          (else (loop (rest lst) (+ 1 idx))))))

;;  switch-zero (node switch-index zero-index) -> node
;;
;;  takes in a node and an index and switches the 0 with the
;;  number at the index (also updates the depth)
;;  switches any numbers actually, will update it later
;;
(define (switch-num list1 switch1 switch2)
  (let ((tmp (list-ref list1 switch2)))
    (list-set (list-set list1 switch2 (list-ref list1 switch1)) switch1 tmp)))
;;  I think i changed this on my main computer already
;;  20170307 192121







(define list-nums '(4 3 5 1 8 17 2))

;(list-tail (+ i 1) list-nums)

;; swap-list-element

#|
  can use this to get the rest of the list after the index so you can
  compare it
|#

;; gets the smallest number from the list
(apply min list-nums)
(define list2 '())


(define (iterate-list-selection list-nums)
  (let ((i 0) (list1 list-nums))
  (cond
    [(eq? (last list1) (list-ref list1 i))
     (begin
       (set! list2 (append list2 (list (first list1)))) list2)]
    [else
     (begin
       (set! list1 (switch-num list1 i (index-of list1 (apply min list1))))
       (set! list2 (append list2 (list (first list1))))
       (iterate-list-selection (list-tail list1 (+ 1 i))))])))
  ;; (swap the number with the first one)
  ;;  iterate to next 
(iterate-list-selection list-nums)
;(display (vector list2))

;(switch-num list-nums 0 4)