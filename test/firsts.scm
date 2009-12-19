(load "src/firsts.scm")
(in-test-group firsts
  (define-each-test
    (assert-equal (firsts '((apple peach pumpkin)
                            (plum pear cherry)
                            (grape raisin pea)
                            (bean carrot eggplant))) '(apple plum grape bean))
    (assert-equal (firsts '((a b) (c d) (e f))) '(a c e))
    (assert-equal (firsts ()) (quote ()))
    (assert-equal (firsts '((five plums) (four) (eleven green oranges))) '(five four eleven))
    (assert-equal (firsts '(((five plums) four) (eleven green oranges) ((no) more)))
                  '((five plums) eleven (no)))
    ))
