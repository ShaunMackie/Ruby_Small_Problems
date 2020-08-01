

=begin

#Problem

- write a program that prompts the user for two positive integers and then prints the results of the following
operations on those two numbers: addition, subtraction, product, quotient, remainder, and power.
- do not worry about validating the input.

#Input

- two positive integers

#Output

- 6 lines of output
-addition, subtraction, product, quotient, remainder, and power,
- not just the results, but also showing the integers and operation symbols

#Examples

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

#Rules

- don't validate the input
- input is two positive integers only


#Questions

#Data Structure

- will be 6 strings using string interpolation

#Algorithm

- prompt the user for a number and initialize a local variable to store the input and convert to an integer
- repeat the process for the 2nd number
- using string interpolation, create 6 strings for the results

=end

puts "==> Enter the first number:"
num1 = gets.chomp.to_i

puts "==> Enter the second number:"
num2 = gets.chomp.to_i

puts "==> #{num1} + #{num2} = #{num1 + num2}"
puts "==> #{num1} - #{num2} = #{num1 - num2}"
puts "==> #{num1} * #{num2} = #{num1 * num2}"
puts "==> #{num1} / #{num2} = #{num1 / num2}"
puts "==> #{num1} % #{num2} = #{num1 % num2}"
puts "==> #{num1} ** #{num2} = #{num1 ** num2}"