func int Fibo [int n] {
    if (eq n 0) { return n }
    if (eq n 1) { return n }
    int foo: (sub n 1)
    int bar: (sub n 2)
    return (sum (Fibo foo) (Fibo bar))
}
print (Fibo 8)