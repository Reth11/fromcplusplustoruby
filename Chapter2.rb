#Tuesday January 20th, 2009
#Programming by Kyle Tuffentsamer
#Chapter 2 programming C in Ruby

#1. write a program to convert a temperature in degrees to Fahrenheit to degress Celsius.
#Data requirements
#Problem Input
#fahrenheit (int)
#Problem Input
#celsius (float)
#Formulas 
#  celsius = (5/9) * (fahrenheit -32)

class Float
  #This is a class to round off numbers to the 2nd decimal
  def round_to(x)
    (self * 10**x).round.to_f / 10**x
  end

  def ceil_to(x)
    (self * 10**x).ceil.to_f / 10**x
  end

  def floor_to(x)
    (self * 10**x).floor.to_f / 10**x
  end
end

puts "Problem #1"
puts "Please enter the temperature in fahrenheit:"  #output line requesting input
STDOUT.flush  #flushes the buffer
ftemp = gets.chomp #grabs the input with gets and 'chomps' or removes the '/n'
ftemp=ftemp.to_i #changes the string to an integer
ctemp = (ftemp-32)*(5.0/9.0).round_to(2) #because x.0 was used this is now a float value and then we use the round class
puts "The temperature in fahrenheit is #{ftemp}\nWhich translates to celsius at #{ctemp}."
puts "\n"
puts "Now, lets try the reverse."
puts "Please enter the temperature in celsius:"
STDOUT.flush
ctemp = gets.chomp
ctemp = ctemp.to_i
ftemp = ((ctemp/(5.0/9.0))+32).round_to(2)
puts "This converts to #{ftemp}."
#-----------------------------------------------------------------------
#Problem #2
#Write a program to read two data items and print their sum, difference, product, and quotient. 
#DATA REQUIREMENTS
#Problem Input
#x,y (int)
#Problem Output
#sum(int)
#difference(int)
#product(int)
#quotient

puts "\n\n"
puts "Problem #2"
puts "Please enter numbers for calculation:"
STDOUT.flush #flushes the buffer
xint = gets.chomp.to_i
yint = gets.chomp.to_i
xsum = xint + yint
xdiff = xint - yint
xprod = xint * yint
xquo = xint / yint
puts "Sum: #{xsum}"
print "Difference: ",xdiff,"\n"
print xprod," is the product\n"
print "The ",xquo," is the quotient\n"
#-----------------------------------------------------------------------
#Problem #3
#Write a program to read in the weight (in pounds) of an object, and compute and print its weight in kilograms and grams.
#(Hint: One pound is equal to 0.453592 kilograms or 453.59237.)

puts "\n\n"
puts "Problem #3"
puts "Please enter the weight of an object (lbs):"
STDOUT.flush
zweight = gets.chomp.to_i #gets the line, removes \n, converts to an interger
zkilo = zweight*453.59237.round_to(2)
zgram = zweight*0.453592.round_to(2)
print "The weight in grams is #{zgram} and the weight in kilograms is #{zkilo}.\n"

#-----------------------------------------------------------------------
#Problem #4
#Write a program that prints your first initial as a block letter. (Hint: use 6 x 6 grid for the letter and print six strings.
#Each string should consist of asterisks (*) interspersed with blanks.)

#my first initial is 'K'
puts"\n\n\n"
puts"Problem #4"
puts"\n"
puts"K   K  \n"
puts"K  K  \n"
puts"KK   \n"
puts"K K   \n"
puts"K  K  \n"
puts"K   K \n"
#this was very stupid. 

#-----------------------------------------------------------------------
#Problem #5
#Write a progra that reads in the lenght and width of a rectangular
#yard and the length and width of a rectangular house situated in the yard.
#Your program should cmopute the time require to cute the grass at the rate 
#of 2 square meters per second.

puts"\n\n\n"
puts "Problem #5"
puts "Calculating the time to cut the grass (@ 2sq/m per sec)"
puts "What is the length of the yard (m)?\n"
STDOUT.flush  #flushes the buffer
yl = gets.chomp.to_i
puts "What is the width of the yard (m)?\n"
STDOUT.flush  #flushes the buffer
yw = gets.chomp.to_i
puts "What is the length of the house (m)?"
STDOUT.flush  #flushes the buffer
hl = gets.chomp.to_i
puts "What is the width of the house (m)?"
STDOUT.flush  #flushes the buffer
hw = gets.chomp.to_i
#now we calculate lawn= (yardwidth * yardlength) - (houselength * housewidth)
zmow = ((yw*yl)-(hl*hw))/2
puts "This will take you #{zmow} seconds."
#-----------------------------------------------------------------------
#Problem #6
#Write a program that reads in the numberators and denominators of two fractions.
#The program should print the product of the two fractions as a fraction and as a percent.

puts"\n\n\n"
puts "Problem #6"
print "Please enter the first numberator: "
STDOUT.flush  #flushes the buffer
number1 = gets.chomp.to_i
print "Please enter the first denominator: "
STDOUT.flush  #flushes the buffer
denom1 = gets.chomp.to_i
print "Please enter the second numberator: "
STDOUT.flush  #flushes the buffer
number2 = gets.chomp.to_i
print "Please enter the second denominator: "
STDOUT.flush  #flushes the buffer
denom2 = gets.chomp.to_i
puts "The frist fraction is #{number1}/#{denom1}."
puts "The second fraction is #{number2}/#{denom2}."
prodtn = number1*number2
prodtd = denom1*denom2
puts "The product is #{prodtn}/#{prodtd}."
fract1 = ((prodtn*1.0)/(prodtd*1.0))*100
fract1 = fract1.round_to(2)
puts "The percetage is #{fract1}%."

#-----------------------------------------------------------------------
#Problem #7
#Write a program that reads in the numberators and denominators of two fractions.
#The program should print the product of the two fractions as a fraction and as a percent.

puts"\n\n\n"
puts "Problem #7"
print "Please enter the first numberator: "
STDOUT.flush  #flushes the buffer
number1 = gets.chomp.to_i
print "Please enter the first denominator: "
STDOUT.flush  #flushes the buffer
denom1 = gets.chomp.to_i
print "Please enter the second numberator: "
STDOUT.flush  #flushes the buffer
number2 = gets.chomp.to_i
print "Please enter the second denominator: "
STDOUT.flush  #flushes the buffer
denom2 = gets.chomp.to_i
puts "The frist fraction is #{number1}/#{denom1}."
puts "The second fraction is #{number2}/#{denom2}."
#prodtn = number1*number2
#prodtd = denom1*denom2
if denom2 == denom1 #if the denominators are the same then add
  prodtn = number1+number2
  prodtd = denom1
  else puts #just multiple
    prodtn = (number1*denom2)+(number2*denom1)
    prodtd = denom1*denom2
    end
puts "The sum is #{prodtn}/#{prodtd}."
fract1 = ((prodtn*1.0)/(prodtd*1.0))*100
fract1 = fract1.round_to(2)
puts "The percetage is #{fract1}%."

#-----------------------------------------------------------------------
#Problem #8
#The Pythagorean theorem states that the sume of the squars of the sides of a right triangle is 
# equal to the square of the square of the hypotenuse. Fore example, if two sides of a righ traingle have lengths
# 3 and 4, then the hyportenuse must have a length of 5. The intengers 3,4, and 5 together form a Pythagorean
# triples. Given two positive integers, m and n, where m > n, a Pythagorean triple can be generated by the
# following formulas: 
# side1 = m^2-n^2
# side2 = 2mn
# hypotenuse = square root of m^2 and n^2
puts"\n\n\n"
puts "Problem #8"
print "Please enter a side of the right triangle: "
STDOUT.flush  #flushes the buffer
a = gets.chomp.to_i
print "Please enter the other side of the right triangle: "
STDOUT.flush  #flushes the buffer
b = gets.chomp.to_i
if a > b then
    m=a
    n=b
    else 
      n=a
      m=b
  end
  side1 = m**2-n**2
  side2 = 2*m*n
  side3 = Math.sqrt(m**2*n**2)
  puts "The sides of the triangle are #{side1}, #{side2}, and #{side3}."