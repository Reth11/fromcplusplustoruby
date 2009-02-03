#Chapter 5 - Program 3
#By Kyle Tuffentsamer

#3. Write a program to read a collection of interger data items and find and print the index of the first occurrence and
#the last occurrence of the number 12. Your program should print index values of 0 if the number 12 is not found. The 
#index is the sequence number of the data item 12. For example, if the eighth data item is the only 12, then the index 
#value 8 should be printed for the first and last occurrence.

puts "enter 0 to exit"
x=0
index12 =0
end_index12 =0
begin
  print "Please enter a number (int), which will be indexed as #{x}: "
  STDOUT.flush
  temp=gets.chomp.to_i
   if temp == 12
      puts "found"
      if index12 == 0
        index12=x
        puts "first #{index12}"
        else 
        end_index12=x
        puts "last #{end_index12}"
      end
    end
  x=x+1
  end until temp == 0
if index12 != 0 && end_index12 == 0
  end_index12 = index12
end
puts "Your first index of 12 is #{index12} and your last index is #{end_index12}."

