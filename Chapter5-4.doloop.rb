#Chapter 5 Program 4
#by Kyle Tuffentsamer

#4. Write a program to find the largest, smallest, and average values in a collectino of n numbers where the value of n will be the first data item read.

print "Please enter you a value (exit 0): "
STDOUT.flush #flush the buffer
a=gets.chomp.to_i
largest=a#compare largest
smallest=a#compare smallest
total=a
quanity=1 #compute average requires total and quanity

while a!=0
    print "Please enter you a value (exit 0): "
    STDOUT.flush #flush the buffer
    a=gets.chomp.to_i
    if a!=0
      if a > largest
        largest=a #compare largest;
        end
      if a < smallest
        smallest=a#compare smallest
        end
      total=a+total
      quanity+=quanity #compute average requires total and quanity
    end
end

puts "\nYour largest number is: #{largest}"
puts "Your smallest number is: #{smallest}"
totalt=total/quanity
puts "\nYour average number is: #{totalt}"
