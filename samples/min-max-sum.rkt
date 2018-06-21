#lang racket

(define (square x) (* x x))

(define (max a b)
  (if (> a b) a b))

(define (min a b)
  (if (< a b) a b))

(define (largest-sums x y z)
  (+ (square (max x y)) (square (max (min x y) z))))