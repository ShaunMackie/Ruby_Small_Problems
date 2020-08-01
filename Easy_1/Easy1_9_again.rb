=begin

#Problem
- write a method that takes one argument, as apostive integer, and returns thes um of it's digits

#Input

- a positive integer

#Output

- a positive integer, which is the sum of the digits of the input

#Examples

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#Rules

- the given integer may contain non-numeric characters, so that must be accounted for 
- each given integer must be separated and summed; the return value is each inividiual digit added together

#Data Structure

none - going to use a built-in ruby method

#Algorithm

- call the digit method on the given integer
- call the sum method on the result of calling the digit method on the given integer

=end

def sum(integer)
  integer.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

