# Multidimensional array
teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

puts teacher_mailboxes[0][0] #=> Adams
puts teacher_mailboxes[1][2] #=> Lopez

#You can also use negative indices to return elements from the end of an array, starting at [-1]

test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

puts test_scores[-1][-3] #=> 55

#dig method
=begin
If you want a nil value returned when trying to access an index of a nonexistent nested element
, you can use the #dig method.
=end

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

puts teacher_mailboxes.dig(1,3) #=> Moore
puts teacher_mailboxes.dig(1,4) #=> nill

# Creating a new nested array
newArray = Array.new(2,3)

#print newArray => [3,3]

myArray = Array.new(3, Array.new(2,"Test"))

print myArray

target = [
  ["Adams", "Baker"],
  ["Jones", "Lewis"],
  ["Perez", "Scott"]
]

myArray[0][0] = 1000
print myArray
=begin
[
 [1000, "Test"],
 [1000, "Test"],
 [1000, "Test"]
]
Changing the value of the first element in the first nested array, 
causes the first element to change in all three nested arrays! This 
same behavior will happen with strings, hashes, or any other mutable objects.
=end

myNewEmptyArray = Array.new(3) { Array.new(2, "*")}
puts
print myNewEmptyArray
=begin
[
[*, *],
[*, *], 
[*, *]
]
=end
myNewEmptyArray[0][0] = 1000
puts
print myNewEmptyArray #=> [[1000, "*"], ["*", "*"], ["*", "*"]]
=begin
  Each { Array.new(2) } block creates a new inner array. 
  This means all three inner arrays are independent objects. When you modify one, the others stay the same.
=end


# Adding and removing elements  
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

# test_scores << [100, 99, 98, 97]
test_scores.push([100, 99, 98, 97]) 
print test_scores
=begin
[
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81],
  [100, 99, 98, 97]
]
=end
test_scores[0].push(0)
print test_scores 
#=> [[97, 76, 79, 93, 0], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].shift()
puts 
print test_scores #=> [[76, 79, 93, 0], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

#Iterating over a nested array
teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

teacher_mailboxes.each_with_index do  |row, row_index|
  puts "Row #{row_index} : #{row}"
end

# To iterate over the individual elements inside of each row, you will need to nest another enumerable method inside.
teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end
#=> Row:0 Column:0 = Adams
#=> Row:0 Column:1 = Baker
#=> Row:0 Column:2 = Clark

#Note :
a = [1, [2, 3], [4, [5]]]
a.flatten
# => [1, 2, 3, 4, 5]