; Testing template for running the tests (aka. suite)
; 
; author: Enrique Comba Riepenhausen
; ecomba.github.com
;

(load "test-manager/load.scm")
(define (test) (run-registered-tests))

; Add the functions to test here.
;   Sample:
;   (load "atom.scm")

(load "atom.scm")
(load "list-of-atoms.scm")
(load "member.scm")
(load "rember.scm")
(load "firsts.scm")

(test)
(quit)
