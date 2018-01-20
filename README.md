# Challenges
Implementations to classic coding challenges. 
Each challenge includes code examples in multiple languages and running examples on https://repl.it.


## 1. Find the n-th Fibonacci number
This problem lends itself to a simple, easy-to-write recursive solution.
It's also terrible due to the O(2^n) calls to the function killing both 
the time and memory complexity. (Memoization does improve it to linear time and space.)

A better solution is an iterative approach. This might also be the sweet spot depending on 
how big and how fast you need your result.

The really elegant solution, however, involves direct calculation of the value with
constant time and space complexity, but this involves more time spent on the code 
to deal with precise, large numbers which may be unecessary depending on your needs.

Check out my solutions:
* Using **C**: [Code](https://github.com/jdsandifer/Challenges/blob/master/fibonacci/fibonacci.c), [Repl.it](https://repl.it/@jdsandifer/Fibonacci-Sequence-Number-C)
* Using **Scheme**: [Code](https://github.com/jdsandifer/Challenges/blob/master/fibonacci/fibonacci.scm), [Repl.it](https://repl.it/@jdsandifer/Fibonacci-Sequence-Number-Scheme)
