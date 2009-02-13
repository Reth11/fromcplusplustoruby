=begin
Chapter 10, Program 7
By Kyle Tuffentsamer

7. Your university runs many hundreds of courses each semester and needs to 
keep track of a wealth of information on each one. Among other things, for 
each course, we need to know:

<> the university course identification number
<> the department course id and section number (for multiple sections of the same course)
<> the number of credits for the course
<> the days and times the course meets
<> the room in which the course meets (building id and room number)
<> the maximum course enrollment
<> the campus on which the course is held
<> the course instructor
<> the number of students currently enrolled and the student id of each such student
<> the course status: open (for additional enrollment), closed, or canceled.

We must be able to change the value of each of these 10 data items and, upon 
request, print all of this information. Initially, the values of the first 7 
items are known - the last 3 are not. Design and implement an abstract data 
type that can be used to model this university course entity. List the 
attributes that you expect to model and how, and list any assumptions that 
you have made about these attributes. Choose whatever 12 methods defined on 
objects of this type that you wish to implement as part of the class, and 
illustrate calls to several of these methods.
=end

#data types for data items: not really needed for Ruby
=begin
c_num, dep_id, sec_id, days, times, room [build_id, room_num], max_enrol, 
campus, instructor, num_stud, stud_id, course_stat (open|closed|canceled).
=end
#12 methods defined on objects in the class
#     change the value of each of the 10 data itmes
#      print all the information
=begin variables and methods (sort of)
1. change the value of c_num (university course identification number)
2. change the value of dep_id (department id) 
3. change the value of sec_id (section id)
4. change the value of num_cred (number of credits)
5. change the value of days_and_times (days and times course meets)
6. change the value of room[build_id, room_num] (room in which the course meets)
7. change the value of max_enrol (maximum course enrollment)
8. change the value of campus (campus where class is held)
9. change the value of instructor (instructor of course)
10.change the value of num_stud and stud_id (number of students currently enrolled and students' id)
11.change the value of course_stat(open|close|cancelled) (status of the course)
12. print all the information
=end
#illustrate ways to call the methods

class University
  def intialize 
    #instance variables
  end
  
  def m_university(abc)
    @control_b = -1
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Univeristy Menu <>"
      puts "University Course Identifcation number is #{@abc}"
      puts "[1] Change University Course Identifcation number"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1
        print "Please enter a new #: "
        STDOUT.flush
        @abc = gets.to_i
      end #if @control end
    end #while end
    abc = @abc 
  end #def end
  
  def m_department(abc)
    @control_b = -1
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Department Menu <>"
      puts "Department Identifcation number is #{@abc}"
      puts "[1] Change Department Identifcation number"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1
        print "Please enter a new #: "
        STDOUT.flush
        @abc = gets.to_i
      end #if @control end
    end #while end
    abc = @abc 
  end
  
  def m_section(abc)
    @control_b = -1
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Section Menu <>"
      puts "Section number is #{@abc}"
      puts "[1] Change Section number"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1
        print "Please enter a new #: "
        STDOUT.flush
        @abc = gets.to_i
      end #if @control end
    end #while end
    abc = @abc 
  end
  
  def m_credit(abc)
    @control_b = -1
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Credit Menu <>"
      puts "The amount of credits is #{@abc}"
      puts "[1] Change number of credits"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1
        print "Please enter a amount: "
        STDOUT.flush
        @abc = gets.to_i
      end #if @control end
    end #while end
    abc = @abc 
  end
  
  def m_calandar(abc)
    @control_b = -1
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Calandar Menu <>"
      puts "Classes meet on #{@abc}"
      puts "[1] Change the day and time"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1
        print "Please enter a new schedule: "
        STDOUT.flush
        @abc = gets
      end #if @control end
    end #while end
    abc = @abc 
  end
  
  def m_room(abc)
    @control_b = -1
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Room Menu <>"
      puts "Room number is #{@abc}"
      puts "[1] Change the room number"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1
        print "Please enter a new room #: "
        STDOUT.flush
        @abc = gets.to_i
      end #if @control end
    end #while end
    abc = @abc 
  end
  
  def m_enrollment(abc)
    @control_b = -1
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Enrollment Menu <>"
      puts "The maximum enrollment is #{@abc}"
      puts "[1] Change the maximum enrollment number"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1
        print "Please enter a new #: "
        STDOUT.flush
        @abc = gets.to_i
      end #if @control end
    end #while end
    abc = @abc 
  end
  
  def m_campus(abc)
    @control_b = -1
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Campus Menu <>"
      puts "Campus number is #{@abc}"
      puts "[1] Change Campus name"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1
        print "Please enter a new name: "
        STDOUT.flush
        @abc = gets
      end #if @control end
    end #while end
    abc = @abc 
  end
  
  def m_instructor(abc)
    @control_b = -1
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Instructor Menu <>"
      puts "The instructor is #{@abc}"
      puts "[1] Change instructor"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1
        print "Please enter a new instructor: "
        STDOUT.flush
        @abc = gets
      end #if @control end
    end #while end
    abc = @abc 
  end
  
  def m_student(abc)
    @control_b = -1
    @stud_num = 0
    @def = 0
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Student Menu <>"
      puts "The student number are: "
      for @i in 0..(abc.length-1) do
        puts "ID: #{@i} #{@abc[@i]}"
      end
      puts "[1] Change, add a student number (delete just enter 0 for the id)"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1
        print "Please enter a new student # to change: "
        STDOUT.flush
        @stud_num = gets.to_i
        print "What id do you want to change it to: "
        STDOUT.flush
        @def = gets.to_i
        @abc[@stud_num] = @def
      end #if @control end
    end #while end
    abc = @abc 
  end
  
  def m_course(abc)
    @control_b = -1
    @abc = abc
    while @control_b != 0 do
      system("cls")
      puts " <> Course Menu <>"
      puts "Course number is #{@abc}"
      puts "[1] Change Course status to open"
      puts "[2] Change Course status to closed"
      puts "[3] Change Course status to cancelled"
      puts "\n"
      puts "[0] Return to Staff Menu"
      print ">> "
      STDOUT.flush #flush the buffer
      @control_b = gets.to_i
      if @control_b == 1 
        @abc = 'open'
      end
      if @control_b == 2
        @abc = 'closed'
      end
      if @control_b == 3
        @abc = 'cancelled'
      end #if @control end
    end #while end
    abc = @abc 
  end
  
  def m_printall(c_num, dep_id, sec_id, num_cred, days_and_times, room, max_enrol, campus, instructor, stud_id, course_stat)
    puts "The University number is #{c_num}"
    puts "The department id is #{dep_id}"
    puts "The section id is #{sec_id}"
    puts "The number of credits for the course is #{num_cred}"
    puts "The schedule of the course is #{days_and_times}"
    puts "The room for the class is #{room}"
    puts "The maximum enrollment is #{max_enrol}"
    puts "The campus name is #{campus}"
    puts "The instructor is #{instructor}"
    puts "The student Ids are:"
    for @i in 0..(stud_id.length-1) do
        puts "ID: #{@i} #{stud_id[@i]}"
      end
    puts "The course status is #{course_stat}"
  end
  
end #end of class  *************************


def PrintStaff
    #Prints out the staff menu
    system("cls")
    puts " <> Staff Menu <>"
    puts "Please choose from the following:"
    puts "[1]  University course menu"
    puts "[2]  Department menu"
    puts "[3]  Section menu"
    puts "[4]  Credit menu"
    puts "[5]  Calendar menu"
    puts "[6]  Room menu"
    puts "[7]  Enrollment menu"
    puts "[8]  Campus menu"
    puts "[9]  Instructor menu"
    puts "[10] Student menu"
    puts "[11] Course menu"
    puts "[12] Print all the information"
    puts "\n[0]  Exit"
    print ">> "
end
=begin
=end
#acc = University.new(1000, 600, 8250, 4, ["monday", "2 to 5"], 203, 30, "North Ridge", "Mrs. White", 15, [100,101,102,103,104,105,106,107,108,109,110,111,112,113,114], "open")
acc = University.new()
c_num = 1000
dep_id = 600
sec_id = 8250
num_cred = 4
days_and_times = ["monday", "2 to 5"]
room = 203
max_enrol = 30
campus = "North Ridge"
instructor = "Mrs. White"
num_stud = 15
stud_id = [100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114]
puts stud_id[1]
puts stud_id[2]
course_stat = "open"
control_a = -1  #intialize
temp = 0
while control_a != 0 do
  PrintStaff()
  STDOUT.flush #flushes the queue
  control_a = gets.to_i
  temp = case control_a
    when 1 : c_num = acc.m_university(c_num)
    when 2 : dep_id = acc.m_department(dep_id)
    when 3 : sec_id = acc.m_section(sec_id)
    when 4 : num_cred = acc.m_credit(num_cred)
    when 5 : days_and_times = acc.m_calandar(days_and_times)
    when 6 : room = acc.m_room(room)
    when 7 : max_enrol = acc.m_enrollment(max_enrol)
    when 8 : campus = acc.m_campus(campus)
    when 9 : instructor = acc.m_instructor(instructor)
    when 10 : stud_id = acc.m_student(stud_id)
    when 11 : course_stat = acc.m_course(course_stat)
    when 12 : acc.m_printall(c_num, dep_id, sec_id, num_cred, days_and_times, room, max_enrol, campus, instructor, stud_id, course_stat)
  end
end

 
