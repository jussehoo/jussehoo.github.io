struct vec [int x, int y]
struct person [text name, vec position, int yearOfBirth]

func int summa [int a, int b] {
    return (sum a b)
}

person [3] team

int foo: 1

team[0]: "Jaska", [12,34], 1964
team[foo]: "Liisa", [32,14], 1977
team[summa(foo,1)]: "Teemu", [42,13], 1985

prints team[2].name
print team[2].position.x
print team[2].position.y
print team[2].yearOfBirth