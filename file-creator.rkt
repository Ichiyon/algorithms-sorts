#lang racket
(require racket/pretty)

;;  file creation


(define out (open-output-file "data.txt" #:mode 'text #:exists 'replace))
(define amount (read-line (current-input-port)))

(write amount out)
(newline out)

(for ((i (string->number amount)))
  (write-string (number->string (random 10000)) out)
  (newline out))




(close-output-port out)