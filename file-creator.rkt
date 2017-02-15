#lang racket

;;  file creation


(define out (open-output-file "data.txt" #:exists 'update))
(define amount (read-line (current-input-port)))

(write amount out)
(close-output-port out)