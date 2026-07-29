room_tidy = true

if room_tidy
  puts "I can play video games"
end

#The only false values in Ruby are the values nil and false themselves

if 1 < 2
    puts "Hot diggity, 1 is less than 2!"
end
  #=> Hot diggity, 1 is less than 2!

# you can rewrite the code to be more succinct and take up only one line:
puts "I'm bigger than you." if 1 > 2

#Adding else and elsif
attack_by_land = false

if attack_by_land 
    puts "Release the goat"
else
    puts "Release the shark"
end

#else if
attack_by_land = false
attack_by_sea = false

if attack_by_land
    puts "Release the Goat"
elsif attack_by_sea
    puts "Release the Shark"
else 
    puts "Release Kevin the flying octopus"
end

# Some Boolean logic

#eql? checks both the value type and the actual value it 
4.eql?(4.0) #=>false

##equal? checks whether both values are the exact same object in memory
a = 5
b = 5
a.equal?(b) #=> true

a = "hello"
b = "hello"
a.equal?(b) #=> false

# <=> (spaceship operator) returns the following:

5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1

#=> -1 if the value on the left is less than the value on the right;
#=> 0 if the value on the left is equal to the value on the right; and
#=> 1 if the value on the left is greater than the value on the right.

#Logical operators
if 1 < 2 && 5 < 6
  puts "Party at Kevin's!"
end
  
# This can also be written as
if 1 < 2 and 5 < 6
  puts "Party at Kevin's!"
end

#The ! operator
attack_by_land = false
attack_by_sea = false

if attack_by_land
    puts "Release the Goat"
elsif !attack_by_land
    puts "Release the Shark"
end

#=> "Release the Shark"

#Case Statement
#grade = "F"
grade = "D"

did_i_pass = case grade
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mom"
  else "'You shall not pass!' -Gandalf"
end

puts did_i_pass


grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end

# Unless Statements
age = 19
unless age < 18
  puts "Get a job."
end

age = 19
puts "Welcome to a life of debt." unless age < 18

# Ternary operator

age = 19
response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."