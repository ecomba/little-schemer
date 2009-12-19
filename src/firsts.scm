(define (firsts l)
  (cond
    ((null? l) (quote ()))
    (else (cons (car (car l))
                (firsts (cdr l))))))
