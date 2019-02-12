// create functions

func Simple [] {
	print "This is simple"
}

func NumberAdder [int number] {
	add number 1
	return number
}

func Caller [text helloText, int first, int second] {
	
	print helloText
	
	Simple
	
	print "1. first = " first ", second = " second
	
	// add 1 to first
	NumberAdder first 
	
	// add 1 to second's copy ('second' not affected)
	print "Temporary: " (NumberAdder #second) 
	
	print "2. first = " first ", second = " second
}

// call the 'Caller' funtion to call other functions

Caller "Hello there!" 12 34