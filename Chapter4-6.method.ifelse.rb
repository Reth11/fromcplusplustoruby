#Chapter 4 - Program 6
#By Kyle Tuffentsamer

#6. The New Telephone Company has the following rate structure for long-distance calls: 
#  [ ] Any call started at or after 6:00 PM (1800 hours) but before 8:00 AM (0800 hours) is discounted 50%
#  [ ] Any call started at or after 8:00 AM (0800 hours) but before 6:00 PM (1800 hours) is charged full price
#  [ ] All calls are subject to a 4% federal tax.
#  [ ] The regular rate for a call is $0.40 per minute
#  [ ] Any call longer than 60 minutes recieves a 15% discount on its cost (after any other discount is subtracted before tax is added).

# Write a program that reads the start time for a call based on a 24-hour clock and the length of the call. The gross cost (before any discounts or tax) should be printed followed by the net cost (after discounts are deducted and tax is added). Use seperate function sto print instructions to the program user and to compute the net cost.

def input_time
  print "Please enter the time the call started in military time: "
end

def input_end
  print "Please end the time the call stopped in military time: "
end

def calcost (zstart,zend,cost)
  @length=zend-zstart
  if @length > 60 # long call gets a 15% discount
    if zstart > 1800 && zstart < 800  # after hours call gets a 50% discount
      cost=((@length)*0.5*0.85*0.40*1.04)
      else #not after hours call, but long call
        cost=((@length)*0.85*0.40*1.04)
    end
  else #not a long call
    if zstart > 1800 && zstart < 800  # after hours call gets a 50% discount
      cost=((@length)*0.5*0.40*1.04) #after hours, short call
      else 
        cost=((@length)*0.40*1.04) #Regular call, short call
      end
  end #end of the if statements
end #end for defination or method

input_time
STDOUT.flush #flushes the buffer
starttime=gets.chomp.to_i
input_end
STDOUT.flush #flushes the buffer
endtime=gets.chomp.to_i
cost=calcost(starttime,endtime,cost)
puts cost
puts "The total cost for the phone call is $#{cost}.\n"
