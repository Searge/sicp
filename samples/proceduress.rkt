#lang racket

(define pi2 3.14159)

;; Площадь окружности с радиусом 10
(* pi (* 10 10))
⇒ 314.1592653589793

(define radius 17)
(* pi (* radius radius))
⇒ 907.920276887450

;; задаем, что "окружность" будет равна результату выражения
(define circumference (* 2 pi radius))
circumference
⇒ 106.81415022205297

(* (+ 3 (* 4 5)) (+ 2 1 7))
230


;; (square x): параметр процедуры (переменная)
;; (* x x): тело процедуры ()

(define (square x) 
  (* x x)
  )

(define (sum_of_squares x y) 
  (+ (square x) (square y)
     )
  )

(define (f a) 
  (sum_of_squares 
    (+ a 1) (* a 2)
    )
  )

;; коли ми запускаємо (f 5) визивається:
(sum_of_squares 
  (+ 5 1) (* 5 2)
  )

;; sum_of_squares — теж процедура і визивається ось так:
(+ (square 6) (square 10)) ;; тут показано, як вичисляємо ми
(+ (* 6 6) (* 10 10))
(+ 36 100)

;; аплікативний спосіб
;; не вичисляти значення виразів у дужках (внутрішніх),
;; поки не знадобляться
(+ (square (+ 5 1)) (square (* 5 2)))
;; Lisp робить крок і старається дійти найпростіших операцій 
(+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))
(+      (* 6 6)             (* 10 10))
(+         36                   100)

;; Знаходимо абсолютне число:
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))
        ))

;; cond — conditional (умовний) 

;; приклад з книжки:
(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

;; інший приклад
(define (abs x)
  (if (< x 0) (- x) x))

;; Тут використовується особлива форма if, обмежений вид умовного виразу. Його можна використовувати при разборе случаев, когда есть ровно два возможных исхода. Общая форма выражения if такова:
;; (if ⟨предикат⟩ ⟨наслідок⟩ ⟨альтернатива⟩)

;; Робимо більше, або дорівнює
(define (>= x y)
 (or (> x y) (= x y)))

(define (>= x y)
  (not (< x y)))

;; пошук квадратного корня
;; кв.к ікс це таке число ігрек, яке: y>=0, y^2 = x

(define (sqrt-iter guess x)
  (if (good-enough? guess x) guess
      (sqrt-iter (improve guess x) x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average a b)
  (/ (+ a b) 2))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.01))
(define (sqrt x)
  (sqrt-iter 1.0 x))
