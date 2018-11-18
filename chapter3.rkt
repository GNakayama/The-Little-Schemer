(require racket/include)
(include "chapter2.rkt")

(define rmember
  (lambda (a lat)
    (cond
      ((null? lat) '())
      ((eq? a (car lat)) (cdr lat))
      (else (cons (car lat) (rmember a (cdr lat)))))))
