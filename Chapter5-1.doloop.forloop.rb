#Chapter 5 - Program 1
#By Kyle Tuffentsamer

#1. Write a program that will find the product of a colletion of data values. Your program should
#ignore any nagative data and should terminate when a zero value is read. 

#find the product by *
total=1
#data=1
#while !(data == '0')
begin
    print "Please enter a data value (exit 0): "
    STDOUT.flush #print statement before gathering input
    data=gets.chomp
    #information validation
    isNumber=true
    for i in 0..(data.length-1) #data.length will return 2 and begins with 1. Strings start at 0.
      if (data[i].chr =~ /\d/) || (data[i].chr == ".") #compare the entire string to numbers and does float
        else 
        isNumber=false
        end
    end
    if (isNumber == true) && !(data == '0')
      total=data.to_f*total
      puts "mulitplied, current value is #{total}."
    end
    if isNumber == false 
      puts "=> Number is invalid. Try again." 
    end
  end until (data == '0')
puts total
  
