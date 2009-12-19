(load "src/list-of-atoms.scm")
(in-test-group lat
  (define-each-test 
    (assert-true (lat? ()))
    (assert-true (lat? '(bacon and eggs)))
    (assert-false (lat? '(bacon (and eggs))))
  ))
