#lang racket
;; n! = n * (n - 1) * (n - 2) .. 1
;; Рекурсивне рішення
;; n! = n * (n - 1)!

 (define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))))