(define (member? atom lat)
  (cond
    ((null? lat) #f)
    (else (or (eq? (car lat) atom)
              (member? atom (cdr lat))))))
