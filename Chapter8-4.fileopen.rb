=begin
Chapter 8, Program 4
by Kyle Tuffentsamer

4. Computer the monthly payment and the total payment for a bank loan, given: 
  a) the amount of the loan;
  b) the duration of the loan in months;
  c) the interest rate for the loan;
  
  Your program should read in one loan at a time, perform the required 
  computation, and print the values of the monthly payment and the total payment.
  <data in file: Chp8Pgm4i.txt>
  
  Hints:
  A. monthly_pay = (ratem x expm**months x loans)/(expm**months-1.0)
  where ratem = rate / 1200.0
        expm = (1.0 + ratem)
  You will need a loop to multiply expm by itself months times.
  
  B. The formula for computing the total payments is
      total=monthpay x months
=end

def MonthlyPayment(rate,months,loans,loan_payment)
  ratem = rate / 1200.0
  expm = (1.0 + ratem)
  loan_payment  = (ratem * expm ** months * loans) / (expm ** months - 1.0)
  return loan_payment
end

def TotalPayment(loan_months,loan_payment,total)
  total = loan_months * loan_payment
  return total
end

class Float
  #This is a class to round off numbers to the 2nd decimal
  def round_to(x)
    (self * 10**x).round.to_f / 10**x
  end

  def ceil_to(x)
    (self * 10**x).ceil.to_f / 10**x
  end

  def floor_to(x)
    (self * 10**x).floor.to_f / 10**x
  end
end

total = 0
f1 = File.open('Chp8Pgm4i.txt','r') #Open input file
#first line is junk / header
line = f1.gets #get the first line
while line = f1.gets  #should be the second line
    temp_string = line
    temp_string = temp_string.split(' ') #takes the line and breaks them into words stored as lists in an array
    loan_amount = temp_string[0].to_i #loan amount
    loan_months = temp_string[1].to_i #months
    loan_rate = temp_string[2].to_i #rate
    loan_payment = MonthlyPayment(loan_rate,loan_months,loan_amount,loan_payment).round_to(2)
    total = TotalPayment(loan_months,loan_payment,total).round_to(2)
    print "Your monthly payment is: $#{loan_payment}.\n" #call method to calculate the monthly payment
    print "Your total payment is: $#{total}.\n" #call method to calculate the total payment
 end   #end of while
f1.close #close the file