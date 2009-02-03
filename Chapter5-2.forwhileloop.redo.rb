=begin
Chapter 5 Program 2
by Kyle Tuffentsamer

2. Bunyan Lumber Co. needs to create a table of the engineering properties of its lumber. The
dimensions of the wood are given as base and height in inches. Engineers need to know the 
following information about lumber:

cross sectional area: (base x height)
moment of inertia: (base x height**3) / 12
section modulus: (base x height**2) / 6

The owner, Paul, makes lumber with base sizes 2, 4, 6, 8, 10, and 12 inches. The height sizes
are 2, 4, 6, 8, and 10 inches. Produce a table with appropriate headings to show these values
and the computed engineering properties. Do not repeat your computations and display for boards
having the same dimensions. For example, you may consider a 2-by-6 and a 6-by-2 board the same.
=end
#this requires three seperate tables...
#definations
def MyTables(tables,b,h,result) 
 if tables == 1
    result=(b*h)  #Cross sectional area
    elsif tables == 2
      result =((b*h**3)/12)  #moment of inertia
    else
      result =((b*h**2)/6)  #section modulus
    end #end of calculating result
end #end of defination

def SpacingTopRow(slide) #This is for the Top Row
if slide < 10
    print " 00#{slide}"
    else
    print " 0#{slide}"
  end #ends the if
end #ends the defination

def SpacingOne(slide) #This is for the bulk of the spacing
if slide < 10
    print "00#{slide}"
    else
    print "0#{slide}"
  end #ends the if
end #ends the defination

def SpacingTwo(slide)  #This is for 3rd set of spacing
  if slide < 10
    print " 00"
    elsif slide <100
      print " 0"
    else 
    print " "
  end #ends the if
end #ends the defination

#code
result = 0
puts "Welcome to Bunyan Lumber Co."
puts "\n"
word = ["cross section", "moment of inertia","section modulus"]
for tables in 1..3 #an array indicating which table to use
    puts "Table: lumber properties \n \t#{word[tables-1]}"
    puts "\s\s\s\s\s\s\s\s\s\s<= Base size => \n"
    print "000"
    top_row =2,4,6,8,10,12 #declaration => top row
    top_row.each {|top_row| SpacingTopRow(top_row)}
    puts "\n"
    base_height=2,4,6,8,10,12
    base_height.each{|base_height| SpacingOne(base_height); base_width = 2,4,6,8,10,12; base_width.each{|base_width| if base_height+base_width < 16 then result=MyTables(tables,base_width,base_height,result); SpacingTwo(result);print "#{result}";end}; print "\n"}
    #Once I work on condensing this I will condense the rest of the code. I think I'm needing classes at this point.
    puts "\n\n"
end #ends the for loop of 3.