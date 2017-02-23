#lang racket
(require control)

;; insertion sort



(define (insert-at lst pos x)
  (define-values (before after) (split-at lst pos))
  (append before (cons x after)))

(define (delete-n l n)
  (if (= n 0) 
      (cdr l)
      (append (list (car l)) (delete-n (cdr l) (- n 1)))))

;;---------------------------------------------------------------------------------------------------------------------------------------




(define amount 7)

(define list-nums  '(15 8 7 6 5 1 4 2))

;;  comparison : num list num num -> list
;;
;;   comparison is used for insertion sort.
;;  more generally, it takes in a key, a list, a position,
;;  and a key-position and compares the key to the data at the position

;;   if the key is greater than the number at position it decrements the position by 1
;;  and looks again until it finds one it is smaller than or the position is 0. It then inserts the
;;  key into that location.
;;
(define (comparison key list position key-position)
     
  (while (and (> (list-ref list position) key) (> position 0))
         (set! position (- position 1)))
  (cond
    [(> position 0) (delete-n (insert-at list (+ 1 position) key) (+ 1 key-position))]
    [(> (list-ref list position) key)  (delete-n (insert-at list 0 key) (+ 1 key-position))]
    [(< (list-ref list position) key)  (delete-n (insert-at list 1 key) (+ 1 key-position))]
    [list]))

       
   
       ;(delete-n (insert-at list position key) (+ 1 key-position)))
       

(for ((i amount))
 (set! list-nums (comparison (list-ref list-nums (+ 1 i)) list-nums i (+ 1 i))))

;(set! list-nums (comparison (list-ref list-nums 1) list-nums 0 1))
;(comparison (list-ref list-nums 6) list-nums 5 6)


;(comparison (list-ref list-nums 4)(comparison (list-ref list-nums 3) (comparison (list-ref list-nums 2) (comparison (list-ref list-nums 1) list-nums 0 1) 1 2) 2 3) 3 4)

(display list-nums)
;(comparison (list-ref list-nums 6) list-nums 1 6)



;(loop list-nums amount)



