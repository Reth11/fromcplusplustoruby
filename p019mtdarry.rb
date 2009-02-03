 # p019mtdarry.rb  
 # if you give return multiple parameters,  
 # the method returns them in an array  
 # The times method of the Integer class iterates block num times,  
 # passing in values from zero to num-1  
   
 def mtdarry  
   10.times do |num|  
     square = num * num  
     return num, square if num > 5  
   end  
 end  
 num, square = mtdarry
puts num
puts square

#---------------------------- do not delete above this line

def procedure_a(a,b)
  a=a+3
  b=b+4
  return a,b
end

a=2
b=2
a,b = procedure_a(a,b)
puts a
puts b

#still broken