; exercise 1.2
(/  (+ (+ 5 4)
       (- 2 (- 3 (+ 6 (/ 4 5)))))
    (* 3 (- 6 2) (- 2 7)))

; exercise 1.3
(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

(define (sum-of-squares-bigger-two x y z)
  (cond ((and (< x y) (< x z)) (sum-of-squares y z))
        ((and (< y x) (< y z)) (sum-of-squares x z))
        (else (sum-of-squares x y))))

; exercise 1.4
; if b > 0 then sum(a, b) else subtract(a, b)

; exercise 1.8
(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))
      
(define (cube x)
  (* x x x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cube-root x)
  (cube-root-iter 1.0 x))