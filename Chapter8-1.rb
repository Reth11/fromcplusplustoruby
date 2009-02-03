=begin
Chapter 8 Program 1
By Kyle Tuffentsamer

1. Write a program system that brings payroll checks using the file produced 
by the Payroll Program described in Section 8.4. The format of the checks should 
be similar to the one shown in Fig. 8.22.

Check:
Company Name                    Check No. 12372
City, State                     Date: 03-17-92


Pay to the
Order of:   William Cosby       $20000.00

                                Jane Smith
=end

#Variables needed: Company Name, City, State, Check Number, Payto, Amount, Signature
#Variables ordered: Company, Payto, City, State, Check Number, Amount, Signature [constant]

#!/usr/bin/ruby
x=0
temp_file=[]
File.open('finance.txt', 'r') do |f1|  
   while line = f1.gets  
     temp_file[x]=line
     x=x+1
   end   #end of while
 end  #end of file do
f2=File.open('payroll.txt', 'w') #Create a new file and write to it
for y in 0..(temp_file.length-1) do
    #The file is read into temp_file now. This looks best to use a regex: scan(/\w+/) or split(' ')
    temp_string = temp_file[y].split(' ')
    t_company = temp_string[0]
    t_pay_to = temp_string[1]
    t_city = temp_string[2]
    t_state = temp_string[3]
    t_check = temp_string[4]
    t_amount = temp_string[5]
    #printing the check
    f2.puts "#{t_company}\t\t\t\t\tCheck No. #{t_check}"
    f2.puts "#{t_city}, #{t_state}\t\t\t\tDate: 02-03-09"
    f2.puts "\n"
    f2.puts "\n"
    f2.puts "Pay to the"
    f2.puts "Order of: #{t_pay_to}\t\t\t$#{t_amount}"
    f2.puts "\n"
    f2.puts "\t\t\t\t\tJane Smith"
    f2.puts "\n"
    f2.puts "-------------------------------------------------------"
  end
#not unti the end
f2.close #close the file we are writing to.