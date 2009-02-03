#Chapter 5 Program 2
#by Kyle Tuffentsamer

#2. Bunyan Lumber Co. needs to create a table of the engineering properties of its lumber. The
#dimensions of the wood are given as base and height in inches. Engineers need to know the 
#following information about lumber:

#cross sectional area: (base x height)
#moment of inertia: (base x height**3) / 12
#section modulus: (base x height**2) / 6

#The owner, Paul, makes lumber with base sizes 2, 4, 6, 8, 10, and 12 inches. The height sizes
#are 2, 4, 6, 8, and 10 inches. Produce a table with appropriate headings to show these values
#and the computed engineering properties. Do not repeat your computations and display for boards
#having the same dimensions. For example, you may consider a 2-by-6 and a 6-by-2 board the same.

#this requires three seperate tables...
puts "Welcome to Bunyan Lumber Co."
puts "\n"
word = ["cross section", "moment of inertia","section modulus"]
for tables in 1..3
#cross=(b*h)
#inertia=((b*h**3)/12)
#modulus=((b*h**2)/6)
puts "Table: lumber properties \n \t#{word[tables-1]}"
puts "\s\s\s\s\s\s\s\s\s\s<= Base size => \n"
print "000"
i=2
while i<=12 
    if i < 10
      print " 00#{i}"
      else
        print " 0#{i}"
      end
    i=i+2
  end
puts "\n"
h=2
while h <= 12
    if h < 10
      print "00#{h}"
      else
        print "0#{h}"
    end
    b=2
   while (b <= 12) && (h+b<16)
      if tables == 1
        calc=(b*h)  #damn calulation !!!!!
        elsif tables == 2
          calc =((b*h**3)/12)  #damn calulation !!!!!
        else
          calc =((b*h**2)/6)  #damn calulation !!!!!
      end
      if calc < 10
        print " 00"
        elsif calc <100
          print " 0"
        else 
          print " "
      end
      print "#{calc}"
      b=b+2
    end
    print "\n"
    h=h+2
  end
  puts "\n\n"
end