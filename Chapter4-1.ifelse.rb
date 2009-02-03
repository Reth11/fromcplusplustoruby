#Chapter 4 - Program 1
#By Kyle Tuffentsamer

#1. Write a program that displays a "message" consisting of three block letters where each letter is an X or an O. The program user's data determins whether
#a particular letter will be an X or O. For example, if the user enters the three letters XOX, the block letters X,O, and X will be displayed.

print "Please enter x or o followed by enter, 3 times: "
STDOUT.flush #flushes the buffer
a = gets.chomp
b = gets.chomp
c = gets.chomp
print "You have entered "
if a == 'x' || a == "X"
  print "X, "
  else print "O, "
  end
if b == 'x' || b == "X"
  print "X, "
  else print "O, "
  end
  if c == 'x' || c == "X"
  print "X.\n"
  else print "O.\n "
  end