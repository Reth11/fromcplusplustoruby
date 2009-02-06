=begin
Chapter 8, Problem 6
by Kyle Tuffentsamer

6. Whatsamata U. offers a service to its faculty in computing grades at the end 
of each semester. A program will process three weighted test scores and will 
calculate a student's average and letter grade (A is 90 to 100, a B is 80 to 
89, etc.). Read the student data from a file [Chp8Pgm6i.txt]and write each student's name, 
test score, average, and grade to an output file [Chp8Pgm6o.txt].
  Write a program system to provide this valuable service. The data will 
consist of the three test weights followed by three test scores and a 
student ID number (four digits) for each student. Calculate the weighted 
average for each student and the corresponding grade. This information should 
be printed along with the initial three test scores. The weighted average 
for each student is equal to 
  
  weight1 x score1 + weight2 x score2 + weight3 x score3
 
 For summary statistics, print the "highest weighted average," "lowest weighted 
average," "average of the weighted averages," and "total number of students 
processed." Sample Data:
 0.35 0.25  0.40    (test weights)
 100  76  88  1014  (test scores and ID)
=end

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

#>>open file and read in lines<<
x = 0
temp_file = []
File.open('Chp8Pgm6i.txt', 'r') do |f1|  
   while line = f1.gets  
     temp_file[x] = line
     x = x + 1
   end   #end of while
 end  #end of file do
#>>calculate the weighted average and letter grade<<
temp_string = temp_file[0].split(' ') #grab header information
weight_one = temp_string[0].to_f
weight_two = temp_string[1].to_f
weight_three = temp_string[2].to_f #header grab done
grade = []
student_id = []
final_grade = []
letter_grade = []
for y in 1..(temp_file.length-1) do
    #The file is read into temp_file array with each element a line in the file.
    temp_string = temp_file[y].split(' ') #This looks best to use a regex: scan(/\w+/) or split(' ') 
   #temp_string is a line of file without spaces, each word in its element
    #for z in 1..(temp_string.length-1) do #processing each element of the line seperatly
      #<<calculate all data>>
      grade[y] = []
      grade[y][0] = temp_string[0].to_f * weight_one
      grade[y][1] = temp_string[1].to_f * weight_two
      grade[y][2] = temp_string[2].to_f * weight_three
      student_id[y] = temp_string[3]
      final_grade[y] = grade[y][0] + grade[y][1] + grade[y][2]
      a=0;b=0;c=0
      letter_grade[y] = case final_grade[y]
        when 0..59.99: "F"
        when 60..69.99: "D"
        when 70..79.99: "C"
        when 80..89.99: "B"
        when 90..100: "A"
      end #ends the case loop
    #end #ends the for z loop
  end #conversion done, ends for y loop
#>>output to file the student id, test score, average, letter, and grade<<
f2 = File.open('Chp8Pgm6o.txt','w') #create a new file
#then write to file
for y in 1..(temp_file.length-1) do
  #ab = final_grade[y]
  #ab = ab.round_to(2)
  #final_grade[y] =ab
    f2.puts "#{student_id[y]}\t#{final_grade[y]}\t#{letter_grade[y]}"
end
f2.close
#print weighted average and letter grade with the initial three test scores.
for y in 1..(temp_file.length-1) do #amount of students
  puts "Student ID: #{student_id[y]}\t#{grade[y][0].round_to(0)}\t#{grade[y][1].round_to(0)}\t#{grade[y][2].round_to(0)}\t#{letter_grade[y]}"
end
#<<print the average of the weighted average, lowest weighted average, highest weighted average, and total number of students>>
#setup variables to equal the first grade of the first student.
lowest_wgt = grade[1][0]
highest_wgt = grade[1][0]
avg_wgt = 0
for y in 1..(temp_file.length-1) do
    for x in 0..2 do 
      if lowest_wgt > grade[y][x] then lowest_wgt = grade[y][x] end
      highest_wgt = grade[y][x] if highest_wgt < grade[y][x]
      avg_wgt = avg_wgt + grade[y][x]
    end
  end
puts "\n"
c_avg_wgt = (avg_wgt / (temp_file.length-1)).round_to(2)
puts "The weighted average is #{c_avg_wgt}\nThe lowest weighted average is #{lowest_wgt}\nThe highest weighted average is #{highest_wgt}."
puts "There are #{temp_file.length-1} stundents."

