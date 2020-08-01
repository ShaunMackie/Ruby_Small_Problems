=begin

#Problem

- a double number is a number with an even number of digits whose left-side digits are exactly the same as it's right side.
- for example, 44, 3333, 103103 are double numbers.
- 444, 334443 are not.

- write a method that returns 2 times the number provided as an argument,
- unless the argument is a double number
- return double numbers as is

#Input

a positive integer

#Output

- an integer, which is double the given integer argument unless the argument is a doble nujmber, in which case just return the given integer

#Examples

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

#Rules + Questions

- a double number is a number who's left side is equal to it's right side
- if a number is a double number, return it
- else return 2 * the given number
- how do we handle invalid inputs?

#Algorithm and Data Structure

- first we want to check to see if a number is a double number
- use a conditional statement
- if a number is a double number, return it
- else return 2 * the given number

- if number.to_s.length.odd? return 2x number

to check if a number is a dboule number:
- convert integer to string each time we need to
- divide the legnth of the number  by 2, and call the slice method
- compare slicing off from index 0, half the length to calling slice on half the index, that number again

=end

def twice(integer)
  if integer.to_s.length.odd?
    2 * integer
  elsif integer.to_s.slice(0, (integer.to_s.length/2)) == integer.to_s.slice((integer.to_s.length / 2), (integer.to_s.length / 2))
    integer
  else
   integer * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10