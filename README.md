# Challenges
Implementations to classic coding challenges. 
Each challenge includes code examples in multiple languages and running examples on https://repl.it.


## Find the n-th Fibonacci number
This problem lends itself to a simple, easy-to-write recursive solution.
It's also terrible due to the O(2^n) calls to the function killing both 
the time and memory complexity.

A better solution is an iterative approach - or even recursion with memoization.

However, the really elegant solutions involve direct calculation of the value with
constant time and space complexity.

All solutions involve trade-offs in how big of numbers the solution can deal with - 
it takes more coding time to deal with really big integers if it's necessary to give results 
past Fibonacci #46 or so (depending on the primitives of the language used).

Check out my solutions:
* C: [Code](https://github.com/jdsandifer/Challenges/blob/master/fibonacci/fibonacci.c), [Repl](https://repl.it/@jdsandifer/Fibonacci-Sequence-Number-C)
