=begin

#Problem

- create a program that prompts for a bill amount and tip rate
- then computes the tip and then displays the tip amount and total amount of the bill

#Input

two floats or integers, the bill amount and tip rate

#Output

two floats rounded to 1 decimal place if zero or 2 otherwise, the tip amount and total amount of the bill
- the outputs should be formatted with a dollar sign

#Examples

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

#Rules

- round the output to 2 decimal places if  afloat, or 1 decimal place if a whole number
- display the tip amount and the bill amount
- format the output with a dollar sign

#Data Structure

- strings

#Algorithm

- ask the user for the bill amount and tip amount, store the results and convert to floats
- calculate the tip amount and total amount and store in variables to be accessed via string concantentation

- output a string displaying the tip amount and bill amount using string oncantionation


=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

total_tip = (bill * tip / 100).round(2)
total_bill = (bill + total_tip).round(2)

puts "The tip is $#{format("%.2f", total_tip)}"
puts "The total is $#{format("%.2f", total_bill)}"

