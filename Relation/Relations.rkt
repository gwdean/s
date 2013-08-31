#lang racket
; Code adapted from Peteris Krumins
; https://github.com/pkrumins/the-little-schemer/blob/master/07-friends-and-relations.ss

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? (car lat) a)
                (member? a (cdr lat)))))))

(define set?
  (lambda (lat)
    (cond
      ((null? lat) #t)
      ((member? (car lat) (cdr lat)) #f)
      (else
       (set? (cdr lat))))))

(define makeset
  (lambda (lat)
    (cond
      ((null? lat) '())
      ((member? (car lat) (cdr lat)) (makeset (cdr lat)))
      (else
        (cons (car lat) (makeset (cdr lat)))))))