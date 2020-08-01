=begin

#Problem

-write a method that takes an integer and returns an array of all integers, in sequence, between 1 and teh argument
- you may assume that the argument will always be a valid number greater than zero

#Input

a positive integer

#Output
 - an array of inteers, containing all integers from 1 to the given argument


#Examples

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

#Rules + Questions

- the argument will always be a valid positive integer
- return an array of integers, in sequnce, starting at 1 and ending at hte given arguemnt

#Algorithm and Data Structure

return an array from 1 to integer argument

=end

def sequence(integer)
  (1..integer).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]