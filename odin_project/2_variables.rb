# Variables
age = 18 

age = 18 + 2 #=> 20

#operation using the original value and reassign the result

age = age + 1 
age += 1

age = age - 2 
age -= 2

age = age * 2 
age *= 2

age = age / 2 
age /= 2

# Variables as Pointers

desired_location = "Barcelona"
johns_location = desired_location

puts desired_location  #=> "Barcelona"
puts johns_location    #=> "Barcelona"

johns_location.upcase!

puts desired_location #=> BARCELONA
puts johns_location   #=> BARCELONA


a = "hi there"
b = a
a = "not here"

puts a #=> "not here"

a = "hi there"
b = a
a << ", Bob"

puts a #=> hi there, Bob