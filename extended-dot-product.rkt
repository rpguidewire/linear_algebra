;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname extended-dot-product) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

(define list2 (list (list 2 0 9 2)
                    (list 2 0 9 2)
                    (list 2 0 9 2)))


(define list3 (list (list 2 0 9 2 0 0 0)(list 2 0 9 2 0 0 0) (list 2 0 9 2 0 0 0) 
                    (list 2 0 9 2 0 0 0) (list 2 0 9 2 0 0 0)))
                    

(define (calculate-dot-product vectorsetinput)
  ( - ( dot-calc vectorsetinput) 1))
   
(define (prod-of-first lolon)
  (cond
    [(empty? lolon) 1]
    [(empty? (first lolon)) 1]
    [else (* (first (first lolon))
             (prod-of-first (rest lolon)))]))


(define (delete-first linput)
  (cond
    [(empty? linput) empty]
    [(empty? (first linput)) empty]
    [else (append (cons (rest (first linput))
                        (delete-first (rest linput))))]))

(define (dot-calc lolon)
  (cond
    [(empty? lolon) 0]
    [else 
     (+ (prod-of-first lolon)
        (dot-calc (delete-first lolon)))]))


;(delete-first list2)

;(prod-of-first list2)

(check-expect (calculate-dot-product list2) (+ 8 (* 9 9 9) 8))

(check-expect (calculate-dot-product list3) (+ (expt 2 5) (expt 9 5) (expt 2 5)))

"I really really hope that this works well :)"