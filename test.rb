=begin
I'm testing classes. It's not working passing variables
=end

class Dog
  
  def Add(a,b,c) #Methods will return the last value regardless of who it is assigned to. b will not be b+c. A return function is required for multiple variables.
    @a = a
    b = b + c
  end

  def Subtract(a,b,c)
    a = b - c
  end

  def Multiple(a,b,c)
    a = b * c
  end
end

b = 3
c = 7
a = 1
x = Dog.new
puts "Normal: a is #{a}, b is #{b}, c is #{c}"
#a = Add(a,b,c)
z = x.Add(a,b,c)
puts "Add: a is #{a}, b is #{b}, c is #{c} --> z is: #{z}"
#a = Subtract(a,b,c)
z = x.Subtract(a,b,c)
puts "Subtract: a is #{a}, b is #{b}, c is #{c} --> z is: #{z}"
#a = Mulitple(a,b,c)
z = x.Multiple(a,b,c)
puts "Mulitple: a is #{a}, b is #{b}, c is #{c} --> z is: #{z}"