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

; exercise 1.9
; recursive / iterative

; exercise 1.10
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y)
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1)))))))

; exercise 1.11
(define (f-recursive n)
  (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1))
                  (* 2 (f-recursive (- n 2)))
                  (* 3 (f-recursive (- n 3)))))))

(define (f-iter-test n)
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (if (= count 0)
      c
      (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

; exercise 1.12
(define (pascal row col)
  (if (or (= row col) (= col 1))
      1
      (+ (pascal (- row 1) (- col 1))
               (pascal (- row 1) col))))


; exercise 1.13
; TODO


; exercise 1.16
(define (exp-iter-test b n)
  (exp-iter 1 b n))

(define (exp-iter a b n)
  (cond ((= n 0) a)
        (else (cond ((even? n) (exp-iter a (* b b) (/ n 2)))
                    (else (exp-iter (* a b) b (- n 1)))))))

; exercise 1.17
(define (double x) (* x 2))
(define (half x) (/ x 2))

(define (fast-mul a b) (fast-mul-iter a b 0))

(define (fast-mul-iter a b c)
  (cond ((= a 0) c)
        ((even? a) (fast-mul-iter (half a) (double b) c))
        (else (fast-mul-iter (- a 1) b (+ c b)))))

