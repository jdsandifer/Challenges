/* C implementations of both recursive & iterative
 * solutions to calculating Fibonacci sequence numbers.
 * A production solution might also use a precalculated array
 * for faster results for expected sequence nubmers and
 * more advanced number structures for dealing with 
 * very large numbers if required.                             */

#include "limits.h"
#include "stdio.h"
#include "stdlib.h"

#define LENGTH(array)  (sizeof(array) / sizeof((array)[0]))

int fib(int seq_num);
int fib_linear(int seq_num);

int main(void)
{
    /* Expected results are 0, 1, 1, 2, 3, 5, 8,
       21, 1597, 1836311903, and overflow error */
    int tests[] = { 0, 1, 2, 3, 4, 5, 6, 8, 17, 46, 50 };
    
    for (int i = 0; i < LENGTH(tests); i++) {
        int fib_num = tests[i]; 
        printf("Fibonacci sequence #%d, is %d\n", fib_num, fib_linear(fib_num));
    }
    
    return 0;
}

/* Recursive implementation - can't go very high before
 * it creates a large call stack and takes a *long* time.
 * testing revealed an iterative solution would be better. */
int fib(int seq_num)
{
    if (1 == seq_num || 2 == seq_num) return 1;
    else if (2 < seq_num) return fib(seq_num - 1) + fib(seq_num - 2);
    else {
        printf("Error: Not a valid fibonacci sequence number!\n");
        exit(EXIT_FAILURE);
    }
}

/* Iterative implementation - linear time complexity,
 * but still can overflow quickly so that's checked, too. */
int fib_linear(int seq_num)
{
    if (0 == seq_num) return 0;
    else if (1 == seq_num || 2 == seq_num) return 1;
    else if (0 > seq_num) {
        printf("Error: Not a valid fibonacci sequence number!\n");
        exit(EXIT_FAILURE);
    }
    else {
        int last = 1;
        int current = 1;
        int sum = 0;
        
        for (int n = 3; n <= seq_num; n++) {
            sum = (int) last + current;
            if (0 > sum || INT_MAX < sum) {
                printf("Error: Overflow while calculating Fibonncai #%d\n", n);
                printf("Last Fibonncai was #%d: %d\n", n-1, current);
                exit(EXIT_FAILURE);
            }
            last = current;
            current = sum;
        }
        
        return sum;
    }
}
