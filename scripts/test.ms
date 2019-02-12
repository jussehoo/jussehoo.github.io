print "Hei " 5

func Simple [int a, int b] {
	print "Add " a " and " b
	return (sum a b)
}
Simple 1 2
print "Sum: " (Simple 10 10)
print "Sum: " (Simple (Simple 10 10) (Simple 2 2))