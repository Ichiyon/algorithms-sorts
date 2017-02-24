#lang racket

(define list-nums '(4 3 5 1 2))

(list-tail (+ i 1) list-nums)

#|
  can use this to get the rest of the list after the index so you can
  compare it
|#

;; gets the smallest number from the list
(apply min list-nums)
