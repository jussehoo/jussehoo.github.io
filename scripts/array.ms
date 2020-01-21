struct vec [
	int x,
	int y
]
struct person [
	text name,
	vec [2] position,
	int yearOfBirth
]

func int summa [int a, int b] {
    return (sum a b)
}

person [3] teamA

int foo: 1

teamA[0]: "Jaska", [[1,2], [3,4]], 1964
teamA[foo]: "Liisa", [[5,6], [7,8]], 1977
teamA[summa(foo,1)]: "Teemu", [[1,2], [9,0]], 1985

person [3] teamB:
	["Aatu", [[1,2], [3,4]], 34],
	["Bertta", [[5,6], [7,8]], 56],
	["Carl", [[1,2], [9,0]], 78]

prints teamA[2].name
print teamA[2].position[0].x
print teamA[2].position[0].y
print teamA[2].yearOfBirth