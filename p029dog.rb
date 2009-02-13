# p029dog.rb  
# define class Dog  
class Dog  
  def initialize(breed, name)  
    # Instance variables  
    @breed = breed  
    @name = name  
  end  
  
  def bark  
    puts 'Ruff! Ruff!'  
  end  
  
  def display  
    puts "I am of #{@breed} breed and my name is #{@name}"  
  end  
end  
  
# make an object  
# Objects are created on the heap  
d = Dog.new('Labrador', 'Benzy')  
  
=begin  
  Every object is "born" with certain innate abilities.  
  To see a list of innate methods, you can call the methods  
  method (and throw in a sort operation, to make it  
  easier to browse visually). Remove the comment and execute.  
=end  
# puts d.methods.sort  
  
# Amongst these many methods, the methods object_id and respond_to? are important.  
# Every object in Ruby has a unique id number associated with it  
puts "The id of obj is #{d.object_id}."  
  
# To know whether the object knows how to handle the message you want  
# to send it, by using the respond_to? method.  
if d.respond_to?("talk")  
  d.talk  
else  
  puts "Sorry, the object doesn't understand the 'talk' message."  
end  
  
d.bark  
d.display  
  
# making d and d1 point to the same object  
d1 = d  
d1.display  
  
# making d a nil reference, meaning it does not refer to anything  
d = nil  
d.display  
   
# If I now say  
d1 = nil  
# then the Dog object is abandoned and eligible for Garbage Collection (GC)  