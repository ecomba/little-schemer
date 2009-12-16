(in-test-group lat
  (define-each-test 
    (assert-true (lat? ()))
    (assert-true (lat? '(bacon and eggs)))
    (assert-false (lat? '(bacon (and eggs))))
  ))

(define (lat? l)
  (cond
    ((null? l) #t)
    ((atom? (car l)) (lat? (cdr l)))
    (else #f)))
