=begin
Chapter 8, Program 2
By Kyle Tuffentsamer

2.Each year the state legislature rates the productivity rates the productivity of 
the faculty of each of the state-supported colleges and universities. The rating is 
based on reports submitted by the faculty members indicating the average number of 
hours worked per week during the school year. Each faculty member is rated, and the 
receives an overall rating.

  The faculty productivity ratings are computed as follows: 
  
  a. Highly productive means over 55 hours per week reported.
  b. Satisfactory means reported hours per week are between 35 and 55.
  c. Overpaid means reported hours per week are less than 35.
  
  Read the following data from file 
  (assuming all names are padded with balnks to 10 characters): <see file ch8p2.txt> 
  
  Your program should include functions corresponding to the function prototypes shown 
  below as part of your solution: You need not check for input errors to the extent done
  in the Grading Problem (Section 8.5)
=end

x=0
temp_file=[]
File.open('ch8p2.txt', 'r') do |f1|  
   while line = f1.gets  
     temp_file[x]=line
     x=x+1
   end   #end of while
 end  #end of file do
for y in 0..(temp_file.length-1) do
    #The file is read into temp_file now. This looks best to use a regex: scan(/\w+/) or split(' ')
    temp_string = temp_file[y].split(' ')
    t_name = temp_string[0]
    t_hours = temp_string[1].to_i
    #do something with the data
    print t_name + " is "
    if t_hours > 55
      print "Highly productive."
      elsif t_hours > 34
        print "Satisfactory."
      else print "Overpaid."
      end
    print "\n"
 end