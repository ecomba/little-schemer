(in-test-group rember
  (define-each-test
    (assert-equal (rember 'mint '(lamb chops and mint jelly)) '(lamb chops and jelly))
    (assert-equal (rember 'mint '(lamb chops and mint flavored mint jelly)) '(lamb chops and flavored mint jelly))
    (assert-equal (rember 'toast '(bacon lettuce and tomato)) '(bacon lettuce and tomato))
    (assert-equal (rember 'cup '(coffee cup tea cup and hick cup)) '(coffee tea cup and hick cup))
    (assert-equal (rember 'bacon '(bacon lettuce and tomato)) '(lettuce and tomato))
    (assert-equal (rember 'and '(bacon lettuce and tomato)) '(bacon lettuce tomato))
  ))

(define (rember atom lat)
  (cond
    ((null? lat) (quote ()))
    (else (cond
            ((eq? (car lat) atom) (cdr lat))
            (else (cons (car lat)
                        (rember atom (cdr lat))))))))
