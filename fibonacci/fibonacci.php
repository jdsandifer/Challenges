// Iterative Fibonacci number calculator. Given the sequence number
// it will return the corresponding Fibonacci number.
// Returns -1 for bad input (not a positive integer or zero) 
// and returns -2 for integer overflow.
// Time complexity is O(n) and space complexity is O(1).
function fib($sequence_number) {
    if (!is_int($sequence_number) || $sequence_number < 0)
        return -1;
    elseif ($sequence_number === 0)
        return 0;
    elseif ($sequence_number === 1 || $sequence_number === 2)
        return 1;
    else {
        $last = 1;
        $current = 1;
        $sum = 0;
        
        for ($n = 3; $n <= $sequence_number; $n++) {
            if ((PHP_INT_MAX - $current) < $last || $sum < 0)
                return -2;
            else {
                $sum = $last + $current;
                $last = $current;
                $current = $sum;
            }
        }
        
        return $sum;
    }
}

// Code to test the function
$tests = array(-100, -1, "a", 2.5, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 17, 30, 78, 92, 100);

foreach ($tests as $test) {
    $result = fib($test);
    
    if ($result === -1)
        echo "Error: $test is not a valid Fibonacci sequence number!\n";
    elseif ($result === -2)
        echo "Error: Result is too large for a standard integer!\n";
    else
        echo "Fibonacci #$test is $result\n"; 
}
