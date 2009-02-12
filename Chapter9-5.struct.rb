=begin
Chapter 9, Program 5
by Kyle Tuffentsamer

5. The results of a survey of the households in your township are available 
for public scrutiny. Each record contains data for one household, including 
a four-digit integer identification number, the annual income for the 
household, and the number of household members. Write a program to read the 
survey results into three arrays and perform the following analyses:

a. Count the number of households included in the survey and print a 
    three-column table displaying the data.
b. Calculate the average household income, and list the identification number 
    and the income of each household that exceeds the average.
c. Determine the percentage of households that have incomes below the poverty 
    level. Compute the poverty level income using the formula
        p = $6500.00 + $750.00 x (m-2)
        m is the number of members in each household.
=end

Household = Struct.new(:id, :annual_income, :members)  
abc = 0
sline = []
sub_division = []
File.open('Chp9Pgm5i.txt','r') do |f1|
  while line = f1.gets
    sline[abc] = line.split(' ')
    sub_division[abc] = Household.new() 
    sub_division[abc].id = sline[abc][0].to_i
    sub_division[abc].annual_income = sline[abc][1].to_i
    sub_division[abc].members = sline[abc][2].to_i
    abc = abc + 1
  end
end
#part a
for abc in 0..(sub_division.length-1) do
    print "#{sub_division[abc].id}\t"
    print "#{sub_division[abc].annual_income}\t"
    if sub_division[abc].annual_income < 10000 then print "\t" end
    print "#{sub_division[abc].members}\n"
  end
#part b
avg = 0
for abc in 0..(sub_division.length-1) do
    avg = avg + sub_division[abc].annual_income 
  end
avg = avg / (sub_division.length-1)
for abc in 0..(sub_division.length-1) do
  if sub_division[abc].annual_income > avg then 
    puts "ID: #{sub_division[abc].id}\tIncome: $#{sub_division[abc].annual_income} [above]" 
  end
end
#part c
for abc in 0..(sub_division.length-1) do
  pov = 6500 + 750 * (sub_division[abc].members - 2)
  if pov > sub_division[abc].annual_income 
    puts "Poverity: ID: #{sub_division[abc].id}\tIncome: $#{sub_division[abc].annual_income}" 
  end
end
