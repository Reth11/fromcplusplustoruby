#Chapter 4 - Program 7
#By Kyle Tuffentsamer

#7. Write a program that will calculate and print out bills for the city water company. The water rates vary depending
#on whether the bill is for home use, or industrial use. A code of h means home use, a code of c means commericial use, 
#and a code of i means industrial use. Any other code should be treaded as an error. The water rates are computed as follows:
#
# code h: $5.00 plus $0.0005 per gallon used
# code c: $1,000.00 for the first 4 million gallons used and $0.00025 for each additional gallon.
# code i: $1,000.00 if usage does not exceed 4 million gallons; $2,000.00 if usage is more than 4 million gallons but does not 
#            exceed 10 million gallons; and $3,000.00 if usage exceeds 10 million gallons.
#
# Your program should prompt the user to enter an account number (type int), the code (type char), and the gallons of water 
#used (type float). Your program should echo the input data and print the amount due from the user.

loop=1
while loop == 1
    print "Please enter the account number: "
    STDOUT.flush
    accnum=gets.chomp.to_i
    #get code and check it
    iloop = 1
    while iloop == 1
      print "Please enter the code: "
      STDOUT.flush
      code=gets.chomp
      if code[0].chr == "c"
        iloop = 0
      end
      if code[0].chr == "i"
        iloop = 0
      end
      if code[0].chr == "h"
        iloop = 0
      end
    end
    print "Please enter the gallons of water used: "
    STDOUT.flush
    gallons=gets.chomp.to_i
    puts "Customer #{accnum} in code: #{code}; has used #{gallons} of water."
    print "Do you wish to enter another customer (y): "
    STDOUT.flush
    loop=gets.chomp
    puts loop
    if (loop == 'y')
      loop=1
      else loop=0
    end
end
