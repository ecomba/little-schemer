(load "src/member.scm")
(in-test-group member
  (define-each-test
    (assert-false (member? 'tea ()))
    (assert-true (member? 'tea '(coffee and tea)))
    (assert-true (member? 'meat '(mashed potatoes and meat gravy)))
    (assert-false (member? 'liver '(lox)))
  ))
