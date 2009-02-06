=begin
Chapter 8, Program 3
by Kyle Tuffentsamer

3. Write a program system that reads several lines of information 
from a data file and prints each word of the file on a separate 
line of an output file followed by the number of letters in that 
word. Also print a count of words in the file on the screen when 
done. Assume that words are separated by one or more blanks. 
Reuse as many functions introduced in the text or in the C++ 
library as possible.
=end

words_counted = 0
x = 0
temp_file = []
File.open('Chp8Pgm3i.txt', 'r') do |f1|  
   while line = f1.gets  
     temp_file [x] = line
     x = x + 1
   end   #end of while
 end  #end of file do
f2 = File.open('Ch8Pgm3o.txt', 'w') #Create a new file and write to it
for y in 0..(temp_file.length-1) do
    #The file is read into temp_file now. This looks best to use a regex: scan(/\w+/) or split(' ')
    temp_string = temp_file[y].split(' ') #takes the line and breaks them into words stored as lists in an array
    #need another loop. 
    for z in 0..(temp_string.length-1) do
      f2.puts "#{temp_string[z]} #{temp_string[z].length}"      #word
      words_counted = words_counted + 1
    end
  end
puts "The total words are #{words_counted}."
#not unti the end
f2.close #close the file we are writing to.
