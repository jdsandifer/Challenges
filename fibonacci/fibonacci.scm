; Scheme implementations of recursive & iterative
; solutions to calculating Fibonacci sequence numbers.
; A production solution might use a precalculated list
; for *very* fast results for expected sequence numbers,
; more advanced number structures for dealing with 
; very large numbers if required, or make use of the equation
; that calculates the Fibonacci number using the golden ratio.
; For most cases, though, a simple iterative approach is performant
; enough for values up to the limit of the number type.


; Recursive implementation - can't go very high before
; it creates a large call stack and takes a *long* time.
; Quickly saw that an iterative solution is better and
; didn't take this solution far beyond basic funcionality.
(define (fib seq-num)
    (cond
        (
            (< seq-num 0)
            (format #t "Error: ~s is not a valid Fibonacci sequence number!\n" seq-num)
            #f)
        (
            (= seq-num 0)
             0)
        (
            (or 
                (= seq-num 1)
                (= seq-num 2))
             1)
        (
            else 
            (+ 
                (fib 
                    (- seq-num 1))
                (fib 
                    (- seq-num 2))))))
                
                
; Iterative implementation - linear time complexity,
; but still can lose precision at higher numbers so that's checked, too.
(define (fib-linear seq-num)
    (cond
        (
            (< seq-num 0)
            (format #t "Error: ~s is not a valid Fibonacci sequence number!\n" seq-num)
            #f)
        (
            (= seq-num 0)
             0)
        (
            (or 
                (= seq-num 1)
                (= seq-num 2))
             1)
        (
            (> seq-num 78)
            (print "Error: Can't accurately calculate Fibonacci numbers above #78!")
            #f)
        (else
            (define sum 0)
            (define last-num 1)
            (define current-num 1)
            (do ((current-seq-num 3 (+ current-seq-num 1)))
                ((> current-seq-num seq-num))
                (and
                    (define sum (+ last-num current-num))
                    (set! last-num current-num)
                    (set! current-num sum)))
            sum)))


; Tests of the functions - change "fib-linear" to "fib" below
; to see the difference in time complexity
(for-each 
    (lambda (fib-num)
        (and
            (define result (fib-linear fib-num))
            (if result
                (print
                    "Fibonacci #"
                    fib-num
                    " is "
                    (fib-linear fib-num)))))
    '(-1 1 2 3 4 5 6 8 17 46 78 79))
