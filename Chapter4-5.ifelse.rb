#Chapter 4 - Program 5
#By Kyle Tuffentsamer

#5. Write a program that will determine the additional state tax owed by an employee. If the state charges
#a 4% tax on net income, determine net income by subtracting a $500 allowance for each dependend from 
#gross income. Your program will read gross income, numbe of dependents, and tax amount already deducted. 
#It will then compute the actual tax owed and print the difference between tax owed and tax deducted 
#followed by the message "SEND CHECK"  or "REFUND" depending on wther this difference is posi9tive 
#or negative.

print "Enter the employee's income: "
STDOUT.flush #flush the buffer
income=gets.chomp.to_i
print "Enter the employee's dependents: "
STDOUT.flush #flush the buffer
depen=gets.chomp.to_i
print "Tax already deducted: "
STDOUT.flush #flush the buffer
taxdone=gets.chomp.to_i
allowance=500
tax=0.04
puts "\n"
egross=(income*tax)-(depen*allowance)   #end of year gross
print "your end of year gross should be #{egross}.\n"
cgross=(taxdone)-(depen*allowance) #current gross
print "your current gross is #{cgross}.\n"
puts "\n\n"
if egross < cgross
  money=cgross-egross
  puts "You should get back #{money}.\n"
  else 
    money=egross-cgross
    puts " You owe us #{money}.\n"
  end
  
