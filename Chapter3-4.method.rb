#Chapter 3 - Program 4
#By Kyle Tuffentsamer
#
#Four track stars entered the mile race at the Penn Relays. Write a program
# That will read in the race time in minutes and seconds for one runner
#and compute and print their speed in feet per second and in meters per second.
#(Hints: THere are 5280 feet in one mile, and one kilometer equals 3281 feet (
#one meter is equal to 3.281 feet). Test your program on each of the times below.
#Write and call a function/class that displays instructions to the program user. 
#Write two other cuntions, one to compute the speed in meters per second and
#the other to comput the speed in feet per second.
#
#Minutes  Seconds
#3            52.83
#3            59.83
#4            00.03
#4            16.22

def runner(x,y,z)
    #x = number of runner, y = minutes, z = seconds
    #distance = each person ran a quarter mile. which 1320 feet and 402.316 meters.
    qf= 1320       #constant for the quarter-mile in feet
    qm= 402.316  #constant for the quarter-mile in meters
    xtime=y*60+z #converts the total into seconds
    fps=(qf/xtime)
    mps=(qm/xtime)
    puts "Runner #{x}: 3 minutes 52.83 seconds; #{fps} feet per seconds and #{mps} meters per second."
end


#Program begins
print ("Please enter the runners number: ")
STDOUT.flush  #flushes the buffer
runnernum = gets.chomp.to_i #grabs the input with gets and 'chomps' or removes the '/n'
print ("Please enter the runners minutes: " )
STDOUT.flush  #flushes the buffer
rtm = gets.chomp.to_i #grabs the input with gets and 'chomps' or removes the '/n'
print ("Please enter the runners seconds: ")
STDOUT.flush  #flushes the buffer
rts = gets.chomp.to_i #grabs the input with gets and 'chomps' or removes the '/n'
runner(runnernum,rtm,rts)


