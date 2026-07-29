# Loop
i = 0
loop do 
  puts "i is #{i}"
  i += 1
  break if i == 10
end

# While
i = 0
while i < 10 do
  puts "i is #{i}"
  i += 1
end

while gets.chomp != "yes" do
  puts "Are we there yet?"
end

# Until is the opposite of while
i = 0

until i >= 5 do
  puts "i is #{i}"
  i += 1
end 

# Ranges
# We can use Ranges when we know exactly how many times  we want our loop to run 
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4
# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d

#For loop 
for i in (1...5)
  puts "Zombies are coming in #{i} seconds"
end

#Times 
5.times do 
  i+= 1
  puts "Hello number #{i}"
end

5.times do |number| # the variable number get time's value 
  puts "Alternative fact number #{number}"
end

#Upto and Downto loops
5.upto(10) do | num | 
  puts "num: #{num}"
end

#num: 5
#num: 6
#num: 7
#num: 8
#num: 9
#num: 10

