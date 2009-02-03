#Chapter 4 - Program 3
#By Kyle Tuffentsamer

#3. While spending the summer as a surveyor's assistand, you decide to write a program that transform
#compass headings in degrees (0 to 360) to compass beardings. A compass bearing consist of three items:
#the direction you face (norht or south), an angle between 0 and 90 degrees, and the direction you turn 
#before walking (east or weat). For example, to get the bearing for a compass heading of 110.0 degrees, 
#you would first face due south (180 degrees) and then turn 70.0 degrees east (180.0 - 110.0). Be sure to 
#check the input for invalid compass headings.

print "Please input the compass heading (0-360): "
STDOUT.flush #flushes the buffer to get input
heading = gets.chomp.to_i #get the value entered, removes "\n", and then converts to a number
while !(heading < 361 && heading > 0) #error checking
print "Please input the compass heading (0-360): "
STDOUT.flush #flushes the buffer to get input
heading = gets.chomp.to_i #get the value entered, removes "\n", and then converts to a number
end

 #North, East 0-90 and West 360-271
 #South, East 91-180 and West 181-270
 if heading <= 90                                   #North, East
    print "Face North, turn #{heading} degrees to the East.\n"
elsif heading >= 271                              #North, West
    heading=360-heading
    print "Face North, turn #{heading} degrees to the West.\n"
elsif (heading > 90) && (heading <= 180)   #South, East
    heading=180-heading
    print "Face South, turn #{heading} degrees to the East.\n"
elsif (heading > 180 && heading <= 270)    # South, West
    heading=heading-180
    print "Face South, turn #{heading} degrees to the East.\n"
end

