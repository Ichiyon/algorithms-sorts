#lang racket

(define list-nums '(1 3 2 5))


  ;; need a condition in the function to check if even or odd maybe
;(split-at list-nums (/ (- (length list-nums) 1) 2))



(define (breakdown list1)
  (cond
    [(= (length list1) 1) #|do stuff|#]
    [(integer? (/ (length list1) 2)) (split-at list-nums (/ (length list-nums) 2))]
    [else (split-at list-nums (/ (- (length list-nums) 1) 2))]))

(breakdown list-nums)




(define (merge-lists xs ys)
  (cond
    [(null? xs) ys]
    ;if xs is empty, return ys
    [(null? ys) xs]
    ;if ys is empty, return xs
    [(< (car xs) (car ys))
    ;if the head of list "xs" is bigger than head of list "ys"
     (cons (car xs) (merge-lists (cdr xs) ys))]
     ;cons head xs to (recurse)
    [else ;I use true as an else cond here - possibly bad style?
     (cons (car ys) (merge-lists xs (cdr ys)))]))
     ;cons head ys to (recurse)


(define (merge-sort list1)
  (cond
    [(or (null? list1) (null? (cdr list1))) list1]
    [(null? (cddr list1))
     (merge-lists (list (car list1)) (cdr list1))]
    [else
     (let ([x (ceiling (/ (length list1) 2))])
       (merge-lists (merge-sort (take list1 x))
                    (merge-sort (drop list1 x))))]))