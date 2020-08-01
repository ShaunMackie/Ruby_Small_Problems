=begin

#Problem

- write a method that takes a number as an argument
- if the argument is a positive number, return the negative of tha tnumber
- if the number is 0 or negativae, return the orginal number

#Input

- an integer, could be negative or positive or zero

#Output

- an integer

#Examples

negative(5) == -5
negative(-3) == -3
negative(0) == 0 

#Rules + Questions

- how do we handle an invalid input, like a string
  - how do we handle a float

#Algorithm and Data Structure

using a conditional
if hte number is equal to or less than 0, return it
  - else * the number by -1

=end

def negative(integer)
  return integer if integer <= 0
  integer * -1
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 