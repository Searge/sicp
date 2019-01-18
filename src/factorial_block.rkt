#lang racket

(define (factorial n)
    (fact_iter 1 1 n))

(define (fact_iter product counter max_count)
    (if (> counter max_count)
       product
       (fact_iter (* counter product)
                        (+ counter 1)
                        max_count)))