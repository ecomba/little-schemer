(in-test-group atom
  (define-each-test 
    (assert-true (atom? 'Harry))
    (assert-false (atom? '(Harry had a heap of apples)))
    (assert-true (atom? (car '(Harry had a heap of apples))))
    (assert-false (atom? (cdr '(Harry had a heap of apples))))
    (assert-false (atom? (cdr '(Harry))))
    (assert-true (atom? (car (cdr '(swing low sweet cherry oat)))))
    (assert-false (atom? (car (cdr '(swing (low sweet) cherry oat)))))
    (assert-false (atom? ()))
  ))

(define (atom? atom) (and (not (pair? atom)) (not (null? atom))))
