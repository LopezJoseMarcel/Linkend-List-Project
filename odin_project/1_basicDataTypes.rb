#NUMBERS
# addition
1 + 1 #=> 2

# subtraction
1 - 1 #=> 0

# multiplication
1 * 1 #=> 1

# division
1 / 1 #=> 1

# modulo
1 % 1 #=> 0

# Exponent
2 ** 2 #=> 4
3 ** 4 #=> 81

# Modulus (find the remainder of division)
8 % 2 #=> 0  (8 / 2 = 4; no remainder)
10 % 4 #=> 2  (10 / 4 = 2 with a remainder of 2)

# interger
17 / 5 #=> 3

# float 
17 / 5.0 #=> 3.4

# Converting  number types
    # to convert an integer to float:
        13.to_f #=> 13.0
    # to convert a float to integer
        13.0.to_i #=> 13
        12.5.to_i #=> 12

# Some useful number methods 
    #even?  -> es par 
        6.even? #=> true 
        7.even? #=> false 
    #odd?  ->  es impar
        6.odd? #=> false
        7.odd? #=> true

# STRING
# Concatenate strings
    # with the plus operator
        "Welcome " + "to " + " Odin!"
    # with the shovel operator
        "Welcome " + "to " + " Odin!"
    # with the concat methods
        "Welcome ".concat("to ").concat("Odin!")

# Substrings
"hello"[0]    #=> "h"
"hello"[0..1] #=> "he"
"hello"[0,4]  #=> "hell"
"hello"[-1]   #=> "o"

=begin
\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
\"  #=> Double quotation mark
\'  #=> Single quotation mark
=end

#String Interpolation

name = "Thor, son of"

puts "#{name} Odin" #=> Thor, son of Odin.


#capitalize

"hello".capitalize #=> "Hello"

#include?

"hello".include?("lo") #=> true

"hello".include?("z") #=> false

#upcase

"hello".upcase #=> "HELLO"

#downcase

"Hello".downcase #=> "hello"

#empty?

"hello".empty? #=> false

"".empty? #=> true

#length

"hello".length #=> 5
#reverse

"hello".reverse #=> "olleh"
#split

"hello world".split #=> ["hello", "world"]

"hello".split("") #=> ["h", "e", "l", "l", "o"]
#strip

" hello, world   ".strip #=> "hello, world"

#Other Methods
"he77o".sub("7", "l") #=> "hel7o"

"he77o".gsub("7", "l") #=> "hello"

"hello".insert(-1, " dude") #=> "hello dude"

"hello world".delete("l") #=> "heo word"

"!".prepend("hello, ", "world") #=> "hello, world!"

#Using the to_s method, you can convert pretty much anything to a string.
#Here are some examples:

5.to_s #=> "5"

nil.to_s #=> ""

:symbol.to_s #=> "symbol"

# Symbol 

:my_first_symbol

# Symbols vs Strings

"string" == "string" #=> true
"string".object_id == "string".object_id #=> false
:symbol.object_id == :symbol.object_id #=> true


#Booleans
# true, false and nil

