#Chapter 4 - Program 2
#By Kyle Tuffentsamer

#2. Write a program to simulate a state police radar gun. The program should read an austobile speed
#and rpint the message "speeding" if the speed exceeds 55mph.

print "Please enter the automobile speed: "
STDOUT.flush #flushes the buffer
speed = gets.chomp.to_i
if speed >= 55
  puts "Speeding..."
  else puts "disregard target."
  end
  