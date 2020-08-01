=begin

#Problem

- create a method that takes two arguments, multiplies them together, and returns the result

#Input

- two integers

#Output

- an integer - the product of the two given integers

#Examples

multiply(5, 3) == 15

#Rules

- multiply the two given integers together

#Questions

- how do we handle floats?
- how do we handle invalid inputs?
- will the input always be valid?

#Data Structure

#Algorithm

define a method that takes two arguements
multiply the first arg by the 2nd 

=end

def multiply(num1, num2)
num1*num2
end

p multiply(5, 3) == 15

