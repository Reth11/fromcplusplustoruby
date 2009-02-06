=begin
Chapter 9 Program 1
by Kyle Tuffentsamer

1. Write a program for the following problem. You are given a file that contains
a collection of scores (type int) for the last exam in your computer corse. You 
are to computer the average of these scores and assign grades to each student 
according to the following rule: 
  If a student's score is within 10 points (above or below) of the average, assign 
  the grade of satisfactory. If a student's score is more than 10 points above 
  average, assign a grade of oustanding. If a student's score is more than 10 points 
  below average, assign a grade of unsatisfactory.
  
  The output from your program should consist of a labeled two-column list that shows 
  each score and its corresponding grade. As part of the solution your program should 
  include functions that correspond to the function prototypes that follow.
  
  a)Reads exam scores into array scores
  b)Computes average of count student scores
  c)Prints a table showing each student's score and grade on a seperate line
  d)Prints student grade after comparing
=end

#Read file in...
def FileRead(line_num, temp_line)
    #file read into temp_line
    line_num = 0
    File.open('Chp9Pgm1.txt','r') do |f1|
      while line = f1.gets
        temp_line[line_num] = line
        line_num = line_num +1
      end
    end
    line_num=line_num-1
    return line_num, temp_line
end

#Read exam scores into array scores
def ReadExamScores(line_num, temp_line, exam_scores)
    for @line in 0..line_num do
      exam_scores[@line] = temp_line[@line].to_i
    end
end

#Computes average of count students scores
def ComputeScores(line_num, exam_scores, avg_count)
    @total=0
    for @line in 0..line_num do
      @total = @total + exam_scores[@line]
    end
    avg_count = @total / line_num
    return avg_count
end

#Print a table showing: Student's score and grade (on a seperate line)
def PrintScores(line_num, exam_scores)
    for @line in 0..line_num do
      print "#{exam_scores[@line]}\t"
      case exam_scores[@line]
        when 0..59.99: print "F\n"
        when 60..69.99: print "D\n"
        when 70..79.99: print "C\n"
        when 80..89.99: print "B\n"
        when 90..100: print "A\n"
        else print "Problem"
      end
    end
end

#Print student grade after comparing 
def PrintComparedScores(line_num, exam_scores, avg_count)
    for @line in 0..line_num do
      print "#{exam_scores[@line]}\t"
      case exam_scores[@line]
        when 0..(avg_count-10.001): print "unsatifactory\n"
        when (avg_count-10)..(avg_count+10): print "satisfactory\n"
        when (avg_count+10.001)..100: print "outstanding\n"
      end
    end
end

=begin
we Start here...
=end
temp_line = []
exam_scores = []
line_num=0
avg_count = 0
line_num, temp_line = FileRead(line_num, temp_line) #reads the file in
ReadExamScores(line_num, temp_line, exam_scores)
avg_count = ComputeScores(line_num, exam_scores, avg_count)
PrintScores(line_num, exam_scores)
PrintComparedScores(line_num, exam_scores, avg_count)
puts "The average is #{avg_count}."