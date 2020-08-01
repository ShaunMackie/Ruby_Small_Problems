=begin

#Problem

- write a method that takes a string of digits and returns the appropriate number as an intger
- you may not use any of the methods mentioned above, which are the to_i method
- don't worry about leading - or + signs
- don't wrry about invalid characters; assume all characters will be numeric

#Input

- a string that is always convertible to integers

#Output

- an integer

#Examples

string_to_integer('4321') == 4321
string_to_integer('570') == 570

#Rules + Questions

- all inputs will be valid
- don't worry about + or - signs
- do not use any built in ruby methods; do it the old fashioned way

#Algorithm and Data Structure

create a hash that has strings as keys and matching integers as values

inititalize a local variable to store the result and assing it a value of zero

separate the given string into an array of chars using chars

use each on the arry of chars, transforming the given string to it's matching intger

multiply that integer by 10, based on how many digits remain behind it
 - we can start off with a counter that is the size of the array minus 1
 - multiply the current integer by 10 ** the counter
 - minus 1 from the counter

 return the result



=end


HASH = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9}

def string_to_integer(string)
  result = 0 
  counter = string.size - 1

  string.chars.each do |num|
    result += HASH[num] * 10 ** counter
     counter -= 1
  end
  result
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570








#p HASH.has_key?(:'1')
# p HASH[:'5']