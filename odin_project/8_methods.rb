#Creating a method
def my_name 
  "Jose Marcel"
end

puts my_name

# Examples of valid and invalid names
method_name      # valid
_name_of_method  # valid
1_method_name    # invalid
method_27        # valid
method?_name     # invalid
method_name!     # valid
begin            # invalid (Ruby reserved word)
begin_count      # valid

# Parameters and arguments
def great(name)
  "Hello, " + name + "!"
end

puts great("Jose Lopez") #=> Jose Lopez

# Defaults parameters
def great_v2(name = "stranger")
  "Hello, #{name}!"
end

puts great_v2 #=> Hello, stranger!
puts great_v2("Kevin") #=> Hello, Kevin!


def my_name
  return "Joe Smith"
end

puts my_name #=> "Joe Smith"

def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(16) #=>  That is an even number.
puts even_odd(17) #=>  That is an odd number.

def my_name
  return "Joe Smith" # “It is more relevant than the implicit return.”
  "Jane Doe"
end

puts my_name #=> "Joe Smith"

def even_odd(number)
  unless number.is_a? Numeric # This is a unless for validation
    return "A number was not entered"
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.

#Chaining methods
phrase = ["be", "to", "not", "or", "be", "to"]
puts phrase.reverse.join(" ").capitalize

#Bang Methods 
whisper = "HELLO EVERYBODY"

puts whisper.downcase #hello everybody
puts whisper          #HELLO EVERYBODY

# Important
#   By adding a ! to the end of your method, you indicate that this method performs its action and simultaneously 
# overwrites the value of the original object with the result.

puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"



