; Testing template for running the tests (aka. suite)
; 
; author: Enrique Comba Riepenhausen
; ecomba.github.com
(load "test-manager/load.scm")
; Add the functions to test here.
;   Sample:
;   (load "atom.scm")
(load "atom.scm")
(load "list-of-atoms.scm")
(load "member.scm")
(load "rember.scm")
(define (test) (run-registered-tests))
(test)
(quit)
