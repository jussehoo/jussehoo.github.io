struct vec [int x, int y]
struct person [vec pos, text name, int age]
vec pos: [12, 34]
person jack: pos "Jack" 45
person john: [[56,78], "John", 67]

print john.age