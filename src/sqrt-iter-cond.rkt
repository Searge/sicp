#lang racket
;; Новий контейнер з операцій по знаходженню кв. кореню

(define (sqrt x)
  (define (square x) (* x x))
  (define (average x y) (/ (+ x y) 2))
  (define (improve y) (average y (/ x y)))
  (define (good-enough? y) (< (abs (- (square y) x)) 0.001))
  (define (sqrt-iter y) (if (good-enough? y) y (sqrt-iter (improve y))))
  (sqrt-iter 1.0))
