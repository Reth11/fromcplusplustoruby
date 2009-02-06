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
grade = [[1..3],[0..x]]
student_id = []
final_grade = []
letter_grade = []
for y in 1..(temp_file.length-1) do
    #The file is read into temp_file array with each element a line in the file.
    temp_string = temp_file[y].split(' ') #This looks best to use a regex: scan(/\w+/) or split(' ') 
   #temp_string is a line of file without spaces, each word in its element
    #for z in 1..(temp_string.length-1) do #processing each element of the line seperatly
      #<<calculate all data>>
      a = temp_string[0].to_f * weight_one
      grade[1][y] = a
      b = temp_string[1].to_f * weight_two
      grade[2][y] = b
      c = temp_string[2].to_f * weight_three
      grade[3][y] = c
      student_id[y] = temp_string[3]
      final_grade[y] = a + b + c
      letter_grade[y] = case final_grade[y]
        when 0..59.99: "F"
        when 60..69.99: "D"
        when 70..79.99: "C"
        when 80..89.99: "B"
        when 90..100: "A"
      end #ends the case loop
    #end #ends the for z loop
    puts "Student ID: #{student_id[y]}\tG1:#{grade[1][y]}=#{a}\tG2:#{grade[2][y]}=#{b}\tG3:#{grade[3][y]}=#{c}"
  end #conversion done, ends for y loop