=begin
Chapter 5 Program 6
By Kyle Tuffentsamer

Test a procedure or method call that changes variables
=end

def add_three (a,b,c)
  a=a+3
  b=b+3
  c=c+3
end

#program begins
a = 1
b = 1
c = 1
print "a is #{a}, b is #{b}, c is #{c}\n"
add_three(a,b,c)
print "a is #{a}, b is #{b}, c is #{c}\n"

