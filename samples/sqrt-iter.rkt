#lang racket

(define (sqrt-iter guess x)
  (if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))

(define (improve guess x) (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))
;; abs — процедура racket'a
(define (sqrt x) (sqrt-iter 1.0 x))

;; > (sqrt 9)
;; 3.00009155413138
;; > (sqrt (+ 100 37))
;; 11.704699917758145
;; > (sqrt (+ (sqrt 2) (sqrt 3)))
;; 1.7739279023207892
;; > (square (sqrt 1000))
;; 1000.000369924366
;; calc: 999,99999999999979
;; > (sqrt 1000)
;; 31.622782450701045
;; calc: 31,62277660168379