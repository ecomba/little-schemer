(load "src/insert-r.scm")
(in-test-group insert-r
  (define-each-test
    (assert-equal (insertr 'topping 'fudge '(ice cream with fudge for dessert))
              '(ice cream with fudge topping for dessert))
    (assert-equal (insertr 'jalapeño 'and '(tacos tamales and salsa))
                  '(tacos tamales and jalapeño salsa))
    ))
