//  In C/C++/Java it would look like this:
//
//    int Fibonacci(int n)
//    {
//        if (n <= 2) return 1
//        return Fibonacci(n-1) + Fibonacci(n-2)
//    }


func Fibonacci [int n] {
	if (gt 3 n) { return 1 }
	
	return (sum (Fibonacci (sum n -1)) (Fibonacci (sum n -2)))  
}

int i 1

print "FIBO: " (Fibonacci 10)
