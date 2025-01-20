## OBSOLETE: updated version in web editor folder

# Summary

<pre>
int a                   // define integer with a default value (0)
int a: 5                // define with an initial value of 5
text name: "Jack"       // define immutable string
bool b                  // define boolean

sum a b                 // return a+b
sub a b                 // return a-b
eq a b                  // return true if a=b or else return false
if (condition) {code}   // execute code if the condition is true
print a                 // prints an integer 
prints name             // prints a string

// define a struct with two members: name and id
struct person [text name, int id]     
person p                 // define struct variable
p.name: "Jack"           // assign struct variable member

// define a function that returns a value
func int increase [int foo] { return (sum foo 1) }
</pre>

# Types

**int**

Define an integer variable.
<pre>
int a         // defaul value 0
int b: 123    // initial value 123
</pre>

**text**

Define an immutable string variable.
<pre>
text name: "Jack"
</pre>
**bool**
TBD

# Keywords

**func** _return-type function-name [arguments] { function-body }_

Define a function.
<pre>
func void saySomething [] { print "something" }

saySomething
</pre>
<pre>
func int increaseByOne [int foo] { return (sum foo 1) }

int two: 2
int three: (increaseByOne two)
</pre>


**struct** _name [member-definitions]_

<pre>
struct vec [int x, int y]

vec position
position.x: 34
position.y: 56

vec location: [234, 678]
</pre>

<pre>
struct person [text name, vec position, int age]
person boss
boss.position.x: 34
</pre>

**return** value

Returns value in a function.

# Core functions

**sum** _int int_

Return sum of two integers.
<pre>
int two: 2
int five: (sum two 3)
</pre>

**sub** _int int_

Subtraction.
<pre>
int two: (sub 5 3)
</pre>

_bool_ **eq** _int int_

Return true if arguments are equal.

**if** _bool code-block_

Conditional execution.
<pre>
if (eq foo 5) { print "foo equals five" }
</pre>

**print** _int_

Print an integer.

**prints** _text_

Print text.
