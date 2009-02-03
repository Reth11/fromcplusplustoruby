#Chapter 3 - Program 5
#By Kyle Tuffentsamer
#
#A cyclist coasting on a level road slows from a speed of 10 miles/hr to 2.5 miles/hr
#in one minute. Write a computer program that calculates the cyclist's
#constant rate of deceleration and determines how long it will
#take the cyclist to come to rest, given an inital speed of 
#10 miles/hr. (Hint: us the equation a = (vf-vi)/t, where a is 
#acceleration, t is time interval, vi is the intial velocity, 
#and vf is the final verlocity.) Write and call a function that 
#displays instructions to the program user and another function 
#that computes and returns the deceleration given vf, vi, and t.

#The program should have two functions/defs.
#1. to gather information
#2. to calculation and display information

def clientgatherinfo (zaccel,ztime,zvi,zvf)
  print "enter current speed: "
  STDOUT.flush #flushes the buffer
  zvi = gets.chomp.to_i
  print "enter desired stopping speed: "
  STDOUT.flush #flushes the buffer
  zvf = gets.chomp.to_i
  print "enter how long you have to stop: "
  STDOUT.flush #flushes the buffer
  ztime = gets.chomp.to_i
  zaccel = (zvf-zvi)/ztime
end

def deaccel (zaccel)
  print "Your constant rate of deaccelartion is #{zaccel}.\n"
end

#call user info; acceleration, time, intial velocity, final velocity
#defination required the variables to be defined before passing them.
accel =0
time =0
vi =0
vf =0
clientgatherinfo(accel,time,vi,vf)
#calculations and display
deaccel(accel)