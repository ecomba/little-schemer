(in-test-group member
  (define-each-test
    (assert-false (member? 'tea ()))
    (assert-true (member? 'tea '(coffee and tea)))
    (assert-true (member? 'meat '(mashed potatoes and meat gravy)))
    (assert-false (member? 'liver '(lox)))
  ))

(define (member? atom lat)
  (cond
    ((null? lat) #f)
    (else (or (eq? (car lat) atom)
              (member? atom (cdr lat))))))
