# The Include method
#inefficient way 
numbers = [5, 6, 7, 8]
element = 6
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end

result
# => true

element = 3
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end

result
#=> false

# Efficient way using include?
numbers = [5, 6, 7, 8]
element = 6
puts number.include?(element) #=> true

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = friends.select { |friend| friend != 'Brian' }
invited_list.include?('Brian')#=> false

# Any method
numbers = [1,23,4,5,6,7,8]
# Any method
numbers = [1,3] 
puts numbers.any? { |number| number.even? } #=> false

# All method
fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.all? { |fruit| fruit.length > 3 }
#=> true
fruits.all? { |fruit| fruit.length > 6 }
#=> false

# None method
numbers = [1,3] 
puts numbers.none? { |number| number > 4 } #=> true

#one method
fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.one? { |fruit| fruit.length > 9 }
#=> true
fruits.one? { |fruit| fruit.length > 2 }
#=> false


