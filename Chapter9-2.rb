=begin
Chapter 9, Program 2
By Kyle Tuffentsamer
(Structs and Unions)
2. Redo Programming Project 1 assuming that each line of file raw_scores contains
a student's ID number (an int) and an exam score. Modify function read_stu_data 
to read the ID number and the score from the ith data line into array elements ID[i] 
and scores[i], respectively. Modify function print_table to display a three-column 
table with the following headings:
ID  Score   Grade
=end


#1st: studen'ts ID and exam score
student_id = 0
exam_score =0
#2nd: ReadStuData = read_stu_data [function]; ID[i] and scores[i] read in.
def ReadStuData(id,scores)
  #read file Chp9gm2i.txt and get the student id and scores read into an array
  @line = 0
  File.open('Chp9Pgm2i.txt','r') do |f1|
      while line = f1.gets
        @temp_line = line.split(' ')
        id [@line] = @temp_line[0] #Student's ID
        scores[@line] = @temp_line[1].to_i #Exam Score
        @line = @line +1
      end #ends while
    end #ends file.open
  return id, scores
end #ends the definations

  

#3rd: Print table for a three column output.
def PrintTable(id,scores)
  @position = 0
  while @position <= (id.length-1) do
    print "Student Id: #{id[@position]}\tScore: #{scores[@position]}\tLetter Grade: "
    case scores[@position]
      when 0..59.99: print "F\n"
      when 60..69.99: print "D\n"
      when 70..79.99: print "C\n"
      when 80..89.99: print "B\n"
      when 90..100: print "A\n"
        else print "Problem"
        end #end of case
      @position = @position + 1
    end #end of while
end


=begin
=end
id = []
scores = []
id, scores = ReadStuData(id,scores)
PrintTable(id,scores)

  
  