
=begin

#Problem

A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. 

So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. 

Issue an error message if there is no next featured number.

#Input

- an integer

#Output

- an integer (or an error message if there is no next featured number)

#Examples

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# Rules + Questions

- a featured number is an odd number that is a multiple of 7 and whose digits occur exactly once each
- if there is no next featured number, issue an error message

#Algorithm 

- determine the next integer that is greater than the given integer that meets the requirements (the number is odd, a multiple of 7, and whose digits occur exactly once each)
  - calculate the next integer that is greater than the given integer that is a multiple of 7
  - check to see if the number is odd. If it isn't, increment the above-found number by 7. If it is:
  - check to see if each digit in the number occurs exactly once each. If it doesn't, repeat the above step. if it does:
- return the found integer

# Implementation Notes - first method

- initialize a current_number variable and assign it to the following value:
  - divide the given integer argument by 7 
  - add 1 to the result 
  - multiply the result by 7

- initialize a loop
  - convert the number to an array of individual integers and check to see if they are all unique and the current_number is odd. If they are, return current_number. If they aren't:
    - add 7 to current_number and repeat the above step
  - break out of the loop if the number is equal to or bigger than 9_999_999_999
- return the statement "There is no possible number that fulfills those requirements"

# Implementation Notes - second method

- return the statement "There is no possible number that fulfills those requirements" if the integer is equal to or bigger than 9_999_999_999
- add 1 to the given integer argument (integer)
- continue adding 1 to integer until integer is odd and is a multiple of 7
- add 7 to integer until integer is a featured number. 
- return the featured number


=end

def featured(integer)
  current_number = (integer / 7 + 1) * 7

  loop do 
    return current_number if current_number.digits == current_number.digits.uniq && current_number.odd?
    current_number += 7
    break if current_number >= 9_999_999_999
  end

  'There is no possible number that fulfills those requirements'
end

def featured(integer)
  return 'There is no possible number that fulfills those requirements' if integer >= 9_999_999_999

  integer += 1

  integer += 1 until integer.odd? && (integer % 7).zero?

  integer += 7 while !(integer.odd? && integer.digits == integer.digits.uniq)

  integer
end




p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements