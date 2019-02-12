// Make a copy of 'age' with '#'

int age 42

int copyOfAge age

// ...and a reference

int refToAge #age

print age ", " copyOfAge ", " refToAge

// Change values. Changing 'refToAge' changes the original 'age',
// but changing 'copyOfAge' doesn't.

add copyOfAge 10
add refToAge 1

print age ", " copyOfAge ", " refToAge