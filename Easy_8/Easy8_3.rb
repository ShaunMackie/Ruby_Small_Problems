=begin

#Problem

- write a method that returns a list of al the substrings of a string tha tstart at the begining of the original string
- the return value should be arraned in the order from shortest to longest substring

#Input

- a string

#Output

an array of substrings, the first one is 1 char long, 2nd is 2 chars etc till the entire sting is the last element

#Examples

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#Rules + Questions

- arrange the substrings from shortest to longest
- start with the first char and end with the complete given string

#Algorithm and Data Structure

initialize an empty variable to store the result and piint it to an array
initialize a counter with value of 0
call the times method on the length of the string
slice and shovel into retuls
add one to the counter
use the counter and the 2nd arguemtn in the slice method call
return the results array

=end

def substrings_at_start(string)
  results = []
  counter = 0

  string.length.times do 
    results << string.slice(0..counter)
    counter += 1
  end
  p results
end



p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']