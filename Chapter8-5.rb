=begin
Chapter 8, Program 5
by Kyle Tuffentsamer

5. Use your solution to Porgramming Project 4 as the basis for writing 
a program that will write a data file contianing a table of the following 
form:
  Loan Amount: $1000
  INETEREST DURATION    MONTHLY   TOTAL
  RATE      (YEARS)     PAYMENT   PAYMENT
  10.00     20          _______    ______
  10.00     25          _______    ______
  10.00     30          _______    ______
  10.25     20          _______    ______
  
  The output file produced by your program should contain payment 
  information on a $1000 loan for interest rates from 10% to 14% with 
  increments of 0.25%. The loan duration should be 20, 25, and 30 years.
=end

def MonthlyPayment(rate,months,loans,monthly)
  ratem = rate / 1200.0
  expm = (1.0 + ratem)
  monthly  = (ratem * expm ** months * loans) / (expm ** months - 1.0)
  return monthly
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

f2 = File.open('Ch8Pgm5o.txt', 'w') #Create a new file and write to it
f2.puts "Loan Amount: $1000"
f2.puts "Interest\tDuration\tMonthly\tTotal"
f2.puts "Rate\t\t(Years)\t\tPayment\tPayment"
#Loan amount
loan = 1000
rate=10.00
while rate <= 14.00 do
    years = [20,25,30]
    years.each do |year|
      monthly = MonthlyPayment(rate,year,loan,monthly)
      total = TotalPayment(year,monthly,total)
      f2.puts"#{rate}%\t\t#{year}\t\t#{monthly.round_to(2)}\t#{total.round_to(2)}"
    end
    rate = rate + 0.25
  end
f2.close
