#! /usr/bin/racket ; deb
#lang racket/base

(define (get-int x args)
    (string->number (list-ref args x)))

(define args (vector->list (current-command-line-arguments)))

(define (get-random-number cli-args)
    (if (pair? args)
        (if (> (length args) 1)
            (random (get-int 0 args) (get-int 1 args))
            (random 0 (get-int 0 args)))
        (random 0 100)))

(get-random-number args)
