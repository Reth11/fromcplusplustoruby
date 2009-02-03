#Chapter 3 - Program 5
#By Kyle Tuffentsamer
#
#In shopping for a new house, you must consider several factors. In this problem the
#initial cost of the house, estimated annual fuel costs, and annual tax 
#rate are available. Write a program tha will determine the total cost after
#a five-year period for each set of house data below. You should be able 
#to inpect your program output to determine the "best." 

#To calculate the house cost, add the fuel cost for five years to the initial ost, then 
#add the tzxes for five years. Taxes for one year are computed by multiplyng
#the taxrate by the initial cost. Write and call a def that displays instructions
# to the program user and another function that computes and returns 
# the house cost given the initial cost, the annual fuel cost, and the tax rate.

#def getclientinfo (housecost,afuel,taxrate)
def gethousecost (housecost)
  print "please enter the house cost: "
  STDOUT.flush #flushes the buffer
  housecost = gets.chomp.to_i
end

def getfuel(afuel)
 print "please enter the annual fuel cost: "
 STDOUT.flush #flushes the buffer
 afuel = gets.chomp.to_i
end

  def gettaxrate(taxrate)
  print "please enter the tax rate: "
  STDOUT.flush #flushes the buffer
  taxrate = gets.chomp.to_f
end

 def caltotal(housecost,afuel,taxrate)
   total = (afuel*5)+(taxrate*housecost*5)+housecost
 end
  
housecost=gethousecost(housecost)
afuel=getfuel(afuel)
taxrate=gettaxrate(taxrate)
taxpercent=taxrate*100
puts "housecost #{housecost}, fuel #{afuel}, taxrate #{taxpercent}%.\n"
total=caltotal(housecost,afuel,taxrate)
puts "The total house cost is #{total}.\n"