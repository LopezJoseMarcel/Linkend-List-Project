def isogram?(string)
  original_length = string.length #=> 4
  puts original_length
  string_array = string.downcase.split #=> [odin]
  print string_array
  unique_length = string_array.uniq.length #=> 1
  puts unique_length
  original_length == unique_length #=>   4 = 1 => false
end

puts isogram?("Odin")

#=> false

def isogram?(string)
  original_length = string.length #=> 4
  puts original_length
  string_array = string.downcase.split("") #=> [o,d,i,n]
  print string_array
  unique_length = string_array.uniq.length #=> 4
  p unique_length
  original_length == unique_length #=>   4 = 4 => true
end

puts isogram?("Odin")

#=> True
#Depuración con Pry-byebug
def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split
  binding.pry
  unique_length = string_array.uniq.length
  original_length == unique_length

end

isogram?("Odin")
