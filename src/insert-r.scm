(define (insertr new old lat)
  (cond
    ((null? lat) (quote ()))
    (else (cond
            ((eq? (car lat) old)
             (cons old
                   (cons new (cdr lat))))
            (else (cons (car lat)
                        (insertr new old (cdr lat)))))))
  )
