;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname dotproduct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; This Program calculates the dot product of two input vectors (in the form of lists)


(define (dotproduct v1 v2)
  (cond 
    [(equal? (length v1)
              (length v2)) (dot-calc v1 v2)]
    [else "Error"]))

(define (dot-calc v1 v2)
  (cond 
    [(empty? v1) 0]
    [else (+ (* (first v1)
           (first v2)) (dot-calc (rest v1) (rest v2)))]))
