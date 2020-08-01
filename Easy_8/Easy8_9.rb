=begin

#Problem

- write a method that takes a positive integer as an argument and returns that number with it's digits reversed
- don't worry about arguments with leading zeros

#Input

- an integer

#Output
- an integer with the digits reversed 
- no leading zeros in the return value

#Examples

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

#Rules + Questions

- so it's wrong to return a vluae with leading zeros?
- how do we handle invalid inputs? floats?

#Algorithm and Data Structure

call digits on the integer argument, then call join and then to_i

=end

def reversed_number(integer)
  integer.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1