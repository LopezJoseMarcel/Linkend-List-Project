string = "hola hola mundo hola"
substring = "hola"

string.count(substring)
# => 4

# O con scan
string.scan(substring).length
# => 4
out = string.scan(substring)
puts out