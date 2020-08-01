=begin

#Problem

- write a method that takes a positive integer as an argument and returns that number with it's digits reversed
- don't worry about arguments with leading zeros
- the return value of the forth example doesn't have any leading zeros

#Input

- a positve integer

#Output
- the positive number reversed

#Examples

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

#Rules + Questions

- don't worry about arguments with leading zeros

#Algorithm and Data Structure

- init a var and assign it the results of calling digits and join on the given integer

conver the string to an integer without using the to_i method
- init a global variable and assign to a hash where the string rep of a number is the key and the number is the value
- init a local var to store the results and assing a value of zero
- init a local var to be a counter and assign a value of new_integer.lnegth - 1
- convert the string to an array of chars
- iterate over the array, usingt the char as the key to get the matching value
- reassign the result of multiplying the value by the result of (10 ** counter)
- counter - 1
- return the results

=end

NUMBERS = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9 }

def reversed_number(integer)
  new_integer = integer.digits.join
  results = 0
  counter = new_integer.size - 1

  new_integer.chars.each do |char|
    results += NUMBERS[char] * (10 ** counter)
    counter -= 1
  end
  results
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1