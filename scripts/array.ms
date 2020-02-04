struct vec [
	int x,
	int y
]
struct person [
	text name,
	vec [2] position,
	float height
]

func int summa [int a, int b] {
    return (sum a b)
}

person [3] teamA

int foo: 1

teamA[0]: "Jaska", [[1,2], [3,4]], 178.5
teamA[foo]: "Liisa", [[5,6], [7,8]], 183.0
teamA[summa(foo,1)]: "Teemu", [[1,2], [9,0]], 169.1

person [3] teamB:
	["Aatu", [[1,2], [3,4]], 178.3],
	["Bertta", [[5,6], [7,8]], 202.5],
	["Carl", [[1,2], [9,0]], 197.1]

prints teamA[2].name
print teamA[2].position[0].x
print teamA[2].position[0].y
printf teamA[2].height