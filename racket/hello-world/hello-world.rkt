#lang racket

(provide hello)

; making this more contrived than it should be

(define msg "Hello, World!")

(define (hello)
  msg)
