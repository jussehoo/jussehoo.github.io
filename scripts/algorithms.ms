
func Fibo [int n] {
  if (n < 3) { return 1 }
	
  return (
    sum
      (Fibo (n - 1))
      (Fibo (n - 2))
  )
}

print "FIBO: " (Fibo 10)
