=begin
Chapter 9, Program 3
by Kyle Tuffentsamer

3. Write a program to read n data items into two arrays, x and y, of size 20. 
Store the products of corresponding pairs of elements of x and y in a third 
array, z, also of size 20. print a three-column table that displays the arrays 
x, y, and z. Then compute and print the square root of the sum of the items in z. 
Make up your own data, with n less than 20.
=end

x = []
y = []
File.open('Chp9Pgm3i.txt','r') do |file_one|
counter1 = 0 #should be 20 elements 0..19
  while line = file_one.gets do #line is a string that holds the entire line.
    line = line.split(' ')
    x[counter1] = line[0]
    y[counter1] = line[1]
    counter1 =counter1 + 1
  end
end

#creates z as the product of x and y  
z = []
for counter2 in 0..(x.length-1) do
  z[counter2] = x[counter2].to_i * y[counter2].to_i
end
  
#print the arrays
for counter3 in 0..19 do
    print "x: #{x[counter3]}\ty: #{y[counter3]}\tz: #{z[counter3]}\n"
end
  
#calc the sum of z and then do the square root
sum=0
for counter4 in 0..19 do
  sum = sum + z[counter4]
end

zsqrt = Math.sqrt(sum)
puts "The Square Root of the sum of Z is: #{zsqrt}"