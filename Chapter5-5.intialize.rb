=begin
Chapter 5 Program 5
By Kyle Tuffentsamer

a)Write a program to read in a collection of exam scores ranging from 0 to 100. Your
program should count and print the number of outstanding scores (90 to 100), the number
of satisfactory scores (60 to 89), and the number of unsatisfactory scores (0 to 59).
It should also display the category of each score as it is read in. Test your program
on the following data:

63 75 72 72 78 67 80 63 0
90 89 43 59 99 82 12 100 75

b) Modify your program so that is also displays the average exam score (a real number)
at the end of the run.

c) Modify your program to disallow out-of-range scores
=end

#input is 18 variables see block of input above
#@variable ||= "default value" 
score ||= 0
out_standing ||=0
sat_standing ||=0
unsat_standing ||= 0
average ||= 0
puts "Chapter 5, Program 5: Exam scores"
for x in 1..18 do
    print "Enter an exam score #{x}: "
    STDOUT.flush #flush the ruby buffer for input
    score=gets.chomp.to_i
    #c) validate score
    while score > 100 || score < 0
      puts "a score must be between 0 and 100"
      print "Enter an exam score #{x}: "
      STDOUT.flush #flush the ruby buffer for input
      score=gets.chomp.to_i
    end
    #Out standing is 90 to 100
    if score > 89 then out_standing = out_standing + 1
    #Satisfactory is 60 to 89
    elsif score > 59 then sat_standing = sat_standing + 1
    #Unsatisfactory is 0 to 59
    else unsat_stading = unsat_standing + 1 end
    average = average + score
  end
print "Out standing #{out_standing}"
print "\nSatisfactory #{sat_standing}"
print "\nUnsatisfactory #{unsat_standing}"
average = average / 18
print "\nAverage #{average}"
