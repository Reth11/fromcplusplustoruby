=begin
Chapter 8, Program 4
by Kyle Tuffentsamer

4. Computer the monthly payment and the total payment for a bank loan, given: 
  a) the amount of the loan;
  b) the duration of the loan in months;
  c) the interest rate for the loan;
  
  Your program should read in one loan at a time, perform the required computation, and print the values of the monthly payment and the total payment.
  <data in file: Chp8Pgm4i.txt>
  
  Hints:
  A. monthly_pay = (ratem x expm**months x loans)/(expm**months-1.0)
  where ratem = rate / 1200.0
        expm = (1.0 + ratem)
  You will need a loop to multiply expm by itself months times.
  