# => Hashes are same tha a object in JS
# Hash
my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

# Another way to create a Hash
my_hash = Hash.new
print my_hash

# Hashes are very flexible
 hash = { 9 => "nine", :six => "6" }

#Accessing values 
shoes = {
  "summer" => "sandals",
  "winter" => "Boots"
}

puts shoes["summer"]
shoes["hiking"]   #=> nil
shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"


# Alternatively, this method can return a default value instead of raising 
# an error if the given key is not found.
shoes.fetch("hiking", "hiking boots") #=> "hiking boots"

# Adding and changing data
shoes["fall"] = "sneakers"
puts shoes["fall"] #=> sneakers

shoes["summer"] = "flip-flops"
puts shoes["summer"] #=> flip-flops

#Removing data
shoes.delete("summer") #=> flip-flops
puts shoes             #=> {"winter"=>"boots", "fall"=>"sneakers"}

# Some Methods
books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]

# Merging two hashes 

hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }

# Merging two hashes 
personal_data = {
  "name" => "Jose",
  "last_name"=> "Lopez"
}
job_data = {
  "job_name" => "software developer",
  "salary" => {
    "amount" => 4500,
    "currency" => "usd"
  }
}

worker_data = personal_data.merge(job_data)

puts worker_data 
#{"name" => "Jose", "last_name" => "Lopez", "job_name" => "software developer", "salary" => {"amount" => 4500, "currency" => "usd"}}

# Symbols as hash keys
# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

american_cars[:ford]    #=> "Mustang"
japanese_cars[:honda]   #=> "Accord"