=begin

#Problem

write a program that asks the user to enter an integer greater than 0
- then ask if the user wants to determine the sum or product 
- of all numbers between 1 and the entered integer

#Input

- an integer greater than zero and
- a single-character string - either s or p

#Output

- a string that includes the integer objects 1 and the entered number
- telling the user the sum/product between 1 and the entered integer

#Examples

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

#Rules

- the user input integer must be greater than 0; no negative numbers or zero
- no non-integer input for the first question
- the user input for the 2nd question is either s or p, no other inputs
- no floats are allowed as inputs; therefore no outputs will be floats; all integers
- it does not explicitly say we need to validate input, so we will, but in an interview, we would ask

#Questions

- do we need to validate inputs?
- can we accept floats?

#Data Structure



#Algorithm

- define a method to validate if the first input is an integer
- initialize local variables answer and number so they can be accessed in the outer scope

- initialize a loop
- prompt the user for an integer gerater than zero
- initialize a local variable to store the input and convert it to an integer
- break out of the loop if the integer is valid
- else return an error msg and ask for an integer again

- define a method to validate if the 2nd input is an `s` or `p`

- initialize a loop
- ask the user if they want to sum or multiply the numebers
- initialize a local variable to store the input
- break out of hte loop if they enter a valid inpout (s or p)
- else return an error msg and ask for a valid sting input

- using a conditional statement
  - if the user input is sum
  - sum the range and output the proper statement
else
  - multipley the range and output the proper statement

=end

def integer?(input)
  input.to_s.to_i != 0
end

def valid_input?(string)
  string.downcase == 'p' || string.downcase == 's'
end

number = ''
answer = ''

loop do
  puts ">> Please enter an integer greater than 0: "
  number = gets.chomp.to_i
  break if integer?(number)
  puts ">> Oops. That is not a valid integer. "
end

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  answer = gets.chomp
  break if valid_input?(answer)
  puts ">> Oops. Das input sind nicht valid. "
end

if answer == 's'
  result = (1..number).reduce(:+)
  puts "The sum of the integers between 1 and #{number} is #{result}."
else
  result = (1..number).reduce(:*)
  puts "The product of the integers between 1 and #{number} is #{result}."
end