=begin

#Problem

- write a method that returns 2 times the number provided as an argument, unless the argument is a double number
- doulbe numbers shoul dbe returned as-is
- underscores are used for clarify above. Ruby lets you use underscors when writing long numbers
- however, it does not print the underscores when printing long numbers
- don't be alarmed if you dont see the uderscores when running your tests

#Input

#Output

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

- if a number is a double number, return the number
- else, multiply the given number by 2 and return the result
- dont wrry about the underscores in the long number, it can return without them
- how do we handle an invalid input?

  write the final method
  if the number is a double number, return the number
  else rerutn the number * 2
    init a local variable to store the retuls of call ing the is double number method, so the result doesnt affect the current integer


#Algorithm and Data Structure

init a variable to store the number as a string so we can manipulate it
convert the number to a string, calculate the length and divide by 2 and stroet he length in another variable
- then slice the string for that amount and stre iun another avriable and compare to whats left
return true if dbouel number, else false

=end

require 'pry'

def is_double_number?(integer)
  number = integer.to_s
  length = number.length / 2
  half_number = number.slice!(0, length)
  
  number == half_number
end

def twice (number)
  return number if is_double_number?(number)
  number * 2
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