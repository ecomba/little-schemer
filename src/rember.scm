(define (rember atom lat)
  (cond
    ((null? lat) (quote ()))
    (else (cond
            ((eq? (car lat) atom) (cdr lat))
            (else (cons (car lat)
                        (rember atom (cdr lat))))))))
