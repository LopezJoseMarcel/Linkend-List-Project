class Animal
  attr_accessor :legs, :size, :name
end

lion = Animal.new()
lion.legs = 4
lion.size = "4ft"
lion.name = "Lion"

puts lion.legs

class Book 
  attr_accessor :title, :author, :pages
  def initialize(title, author, pages)
   @title = title
   @author = author
   @pages = pages
  end
  
end

book1 = Book.new("Harry Potter", "JK Rowling", 450)

puts book1.title

class Student
  attr_accessor :name, :mayor, :gpa
  def initialize(name, mayor, gpa)
    @name = name
    @mayor = mayor
    @gpa = gpa
  end
  #Object Methods
  def has_honors 
    @gpa > 3
  end
end

student_1 = Student.new("Jim", "Business", 2.6)
student_2 = Student.new("Pam", "Art", 3.6)

puts student_1.has_honors
puts student_2.has_honors()

#=> Inheritance
class Chef 
  def make_chicken
    puts "The chef makes chicken"
  end
  def make_salad 
    puts "The chef makes salad"
  end
  def make_special_dish
    puts "The chef makes special dish"
  end
end

class ItalianChef < Chef
  def make_special_dish
    puts "The chef makes pizza"
  end
  def make_pasta
    puts "The chef makes pasta"
  end
end

chef =Chef.new()
italian_chef = ItalianChef.new()

chef.make_special_dish
italian_chef.make_special_dish
italian_chef.make_pasta
