#lang racket

(provide square total)

;; this problem is a squares problem. what we are really looking for is 2^(n - 1)
(define (square n)
  (expt 2 (- n 1)))

;; the sum of all "squares" is a constant.
;; the sum of 2^n for n = 1..64 = 2^(n + 1) - 1
(define (total)
  (- (expt 2 64) 1))
