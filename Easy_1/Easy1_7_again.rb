=begin

#Problem
write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1
the length of the string should match the given integer.

#Input
a positive integer

#Output
a string of alternating 1s and 0s, starting with 1

#Examples
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#Rules
the length of the returned string should be the size of the given integer. Example, if integer is 6, it will have 6 1s and 0s

#Data Structure
an array

#Algorithm

define a method called `stringy` that takes one parameter `integer`
initialize a local variable  `results` and assign it to an empty array  in order to store the results
call the `times` method on the given integer/2 and pass in a `do..end` block as an argument
call the `shovel` method on the `results` array and pass in the integer obect 1
call the `shovel` method on the `results` array and pass in the integer obect 0
end
call the `shovel` method on the `results` array and pass in the integer obect 1 if `integer`.odd?
call the join method on the results array to turn it into a string while returning it

=end

def stringy(integer)
  results =[]

  (integer/2).times do
    results << 1
    results << 0
  end
  
    results << 1 if integer.odd?
    results.join
  end

  puts stringy(6) == '101010'
  puts stringy(9) == '101010101'
  puts stringy(4) == '1010'
  puts stringy(7) == '1010101'



