=begin

#Problem

- write a method that takes an integer arguemnt, and returns an array of all integers in sequence between 1 and the argument
- you may assume that the argument will always be a valid intger greater than 0

#Input

- a valid integer greater than 0

#Output

- an array starting from 1 and ending at the given integer

#Examples

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

#Rules + Questions

- the input will always be a valid integer greater than zero
- return an array in sequence, from 1 to the given integer

#Algorithm and Data Structure

create a range starting at 1 and ending at the given integer
call to_ a on it

=end

def sequence(integer)
  (1..integer).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]