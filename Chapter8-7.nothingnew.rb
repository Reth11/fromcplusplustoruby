=begin
Chapter 8, Program 7
by Kyle Tuffentsamer

7. Write a program to read in a string of characters that represent a Roman 
numeral and then convert it to Arabic form (an Integer). The character values 
for Roman numberals are as follows:

M 1000
D 500
C 100
L 50
X 10
V 5
I 1

Test your program with the following data: LXXXVII (87), CCXIX (219), 
MCCCLIV (1354), MMDCLXXIII (2673), MCDLXXVI (1476)
=end

#why is this program in this chapter? unknown?
gtotal = 0
print "Please enter a Roman numberal: "
STDOUT.flush #clear the buffer
roman_number = gets.chomp
#if a lower value of letter proceeds a higher one, then its value is subtracted otherwise, add the values.
key_length = roman_number.length-1.to_i
loop_a = 0
while loop_a <=(roman_number.length-1) do
    a = roman_number[loop_a].chr
    y = case a
      when 'M': 1000
      when 'D': 500
      when 'C': 100
      when 'L': 50
      when 'X': 10
      when 'V': 5
      when 'I': 1
      else puts "wrong value entered, program aborted"
    end #end of case
    loop_b = loop_a+1
    z = 0 #intialize because it may not be used.
    if (roman_number.length-1) >= (loop_b) #is there a letter after a? if yes, what is the value
      b = roman_number[loop_b].chr
      z = case b
        when 'M': 1000
        when 'D': 500
        when 'C': 100
        when 'L': 50
        when 'X': 10
        when 'V': 5
        when 'I': 1
        else puts "wrong value entered, program aborted"
      end #end of case
    end #end of if statement for length
    if z > y
      j = z - y
      loop_a = loop_a + 1
      else 
        j = y
    end # end of if z>y
    gtotal = gtotal + j
    loop_a = loop_a + 1
  end #end of for 'a' loop
puts "Your number #{roman_number} means: #{gtotal}."

  
