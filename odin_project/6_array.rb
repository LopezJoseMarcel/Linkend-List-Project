num_array = [1,2,3,4,5]
str_array = ["This", "is", "a", "small", "array"]

Array.new       #=> []
Array.new(3)    #=> [nil, nil, nil]
Array.new(2,7)  #=> [7 , 7]
Array.new(3, true)      #=> [true, true, true]

# Accessing elements 
str_array = ["This","is","an","array"]
puts str_array[0]  #This
puts str_array[1]  #is 
puts str_array[-1] #array
puts str_array[-2] #an

# Array methods 
letter_array = ["a", "b","c", "d", "e"]
puts letter_array.first(1)  # [a]
puts letter_array.first     # [a] 
puts letter_array.first(2)  # [a,b]
puts letter_array.last(2)   # [d,e]

# Adding ans removing elements
num_array = [1, 2]
# At the end
num_array.push[3,4] #=> [1,2,3,4]
num_array << 5      #=> [1,2,3,4,5]
num_array.pop       #=> 5 //remove the element at the end an return it
num_array           #=> [1,2,3,4]

#At the beginning
num_array = [2,3,4]

num_array.unshift(1) #=> [1,2,3,4]
num_array.shift(2)   #=> [3,4]
print num_array

# Adding and subtracting arrays
a = [1,2,3]
b = [3,4,5]

print a + b       #=> [1,2,3,3,4,5]
print a.concat(b) #=> [1,2,3,3,4,5]

#Finding the difference between two arrays 
[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]


#Basic Methods 
[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"

