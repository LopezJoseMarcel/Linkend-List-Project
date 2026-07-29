friends = ['Sharon','Mika','Jhon','Arthur']
invited_list = []

for friend in friends do
  unless friend == 'Mika'
    invited_list.push(friend)
  end
end

print invited_list


#=> Efficient version using select
friends = ['Sharon','Mika','Jhon','Arthur']

invited = friends.select { | friend | friend != 'Mika' }

print invited #=> ["Sharon", "Jhon", "Arthur"]

#=> Efficient version using reject
friends = ['Sharon','Mika','Jhon','Arthur']

invited = friends.reject { | friend | friend == 'Mika' }

print invited #=> ["Sharon", "Jhon", "Arthur"]

#=> Each Method 
friends = ['Sharon','Mika','Jhon','Arthur']
friends.each { |friend| puts " #=> Hello, #{friend}"  }
 #=> Hello, Sharon
 #=> Hello, Mika
 #=> Hello, Jhon
 #=> Hello, Block

#Each, this the logic in the block
numbers = [1,4,5,1]
numbers.each do |number|  
  number *= 2
  puts "This is a new number: #{number}"
end

#Each with Hashes 
my_hash = {"one" => 1, "two" => 2}

my_hash.each { |key, value| puts "#{key} is #{value}" }

my_hash.each { |pair| puts "the pair is #{pair}" }
#=> the pair is ["one", 1]
#=> the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}

#=> “each does not modify the original array.”

#=> The each_with_idex method
numbers = ["one", "two", "three", "four"]
numbers.each_with_index { |value, index| puts "There are a even number #{value}" if index.even? }
#=> There are a even number one
#=> There are a even number three

# The Map Method
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends = []

friends.each { |friend| shouting_at_friends.push(friend.upcase) }

print friends
print shouting_at_friends

=begin
 The #map method (also called #collect) transforms each element from an array 
 according to whatever block you pass to it and returns the transformed elements
 in a new array 
=end
# Example
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map { |friend| friend.upcase }
print friends #=> ["Sharon", "Leo", "Leila", "Brian", "Arun"]

#=> Change your McDonald’s order from medium to extra large
my_order  = ['medium Big Mac', 'medium fries', 'medium milkshake']
my_order.map { |order| item.gsub('medium','large') }
print "#=> #{my_order}" #=> ["medium Big Mac", "medium fries", "medium milkshake"]

#=> Another Example 
salaries = [1200, 1500, 1100, 1800]
salaries.map { | salary | salary - 500 }
puts "#=> #{salaries}" #=> [1200, 1500, 1100, 1800]

# The select method also called #filter
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = friends.select { |friend| friend != 'Brian' }
puts friends #=> ["Sharon", "Leo", "Leila","Brian", "Arun"]
puts invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]

# Let's use #select to see who's coming
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
invited_coming = responses.select { |person, response| response == 'yes' }
puts "#=> #{responses}"
puts "#=> #{invited_coming}"

# The reduce method
=begin
The #reduce method (also called #inject) is possibly the most difficult-to-grasp 
enumerable for new coders. The general idea is that it takes an array or hash and 
reduces it down to a single object. You should use #reduce when you want to get an
output of a single value.
=end
my_numbers = [1,2,3,4,5,6,7]
sum = 0
my_numbers.each { |number| sum += number }
print "#=> #{sum}" #=> 28

=begin
We can also set a different initial value for the accumulator by directly 
passing in a value to the #reduce method.
=end
# first example
my_numbers = [1,2,3,4,5,6,7]
sum_plus_acc = my_numbers.reduce(1000) { |sum, number| sum + number }
puts "#=> #{sum_plus_acc}" #=> 1028
# second  example
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]
 summary = votes.reduce(Hash.new(0)) do |result, vote| 
  result[vote] += 1
  result # => return the hash  
end
puts summary #=> {"Bob's Dirty Burger Shack" => 2, "St. Mark's Bistro" => 1}

#Bang method
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

#option to don't use the method Bang (!)
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end
friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_friends(friends)
 #=> ["Sharon", "Leo", "Leila", "Arun"]


