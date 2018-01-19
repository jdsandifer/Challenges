; Scheme implementations of recursive & iterative
; solutions to calculating Fibonacci sequence numbers.
; A production solution might also use a precalculated array
; for faster results for expected sequence numbers and
; more advanced number structures for dealing with 
; very large numbers if required.


; Recursive implementation - can't go very high before
; it creates a large call stack and takes a *long* time.
; An iterative solution is better.
(define (fib seq-num)
    (cond
        [
            (< seq-num 0)
            (print "Error: Not a valid Fibonacci sequence number!")]
        [
            (= seq-num 0)
             0]
        [
            (or 
                (= seq-num 1)
                (= seq-num 2))
             1]
        [
            else 
            (+ 
                (fib 
                    (- seq-num 1))
                (fib 
                    (- seq-num 2)))]))
                
; Iterative implementation - linear time complexity,
; but still can overflow quickly so that's checked, too.
(define (fib-linear seq-num)
    (cond
        [
            (< seq-num 0)
            (print "Error: Not a valid Fibonacci sequence number!")]
        [
            (= seq-num 0)
             0]
        [
            (or 
                (= seq-num 1)
                (= seq-num 2))
             1]
         [else]
            ))

(define fib-num 17)
(print
    "Fibonacci #"
    fib-num
    " is "
    (fib fib-num))     ; expect 1597 for #17
