int a 5
func IsFive [int a] {
	if (eq a 5) {
		print "TRUE"
		if (eq a 5) {
			print "VERY TRUE"
			return 1
		}
		print "NOT HERE"
	}
	print "NOR HERE"
}
IsFive 5

while (gt a 0) {
	print "a=" a
	add a -1
}