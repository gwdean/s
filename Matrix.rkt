#lang racket
; Matrix and Vector Multiplication
; Adapted from R.Kent Dybvig's "The Scheme Programming Language" (MIT,2009)

; This program demonstrates a variety of basic programming techniques, such as
; - simple arithmetic and vector operations
; - looping with the do syntactic form
; - dispatching based on object type
; - raising exceptions

; Usage
; -----
; Scalar times scalar
; (mul 3 4) => 12
; 
; Scalar times vector
; (mul 1/2 '#(#(1 2 3))) => #(#(1/2 1 3/2))
;
; Scalar times matrix
;
; Vector times matrix
;
; Matrix times vector
;
; Matrix times matrix

; make-matrix creates a matrix (a vector of vectors).
(define make-matrix
  (lambda (rows columns)
    (do ([m (make-vector rows)]
         [i 0 (+ i 1)])
        ((= i rows) m)
      (vector-set! m i (make-vector columns)))))
