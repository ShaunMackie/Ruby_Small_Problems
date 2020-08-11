=begin

#Problem

- write a method that takes an integer and returns the maximum rotation of that argument.
- you don't have to handle multiple zeros
- you can use the method from the previous exercise


#Input

- an integer

#Output

- an integer

#Examples

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

# Rules + Questions

- you may use the method from the previous exercise
- you don't have to handle multiple(leading?) zeros

#Algorithm 

- move the first integer in the given integer argument(number) to the last position in the number
- move the 2nd integer in number to the last position in number
- repeat this process X amount of times, where X is the amount of digits in number less one
- return number

# Implementation Notes 

- initialize a counter variable and assign the value of the length of the number
- initialize a copy of number
- initialize a loop
- reassign integer_copy to: call the rotate_rightmost_digits method and pass in the copy of number and counter as arguments
- increment the counter by subtracting 1
- break out of the loop when counter is >= 1
- return the copy of number

=end

def rotate_rightmost_digits(integer, multiplier)
  number_copy = integer.dup.to_s
  deleted_integer = number_copy[number_copy.length - multiplier]
  number_copy.delete!(number_copy[number_copy.length - multiplier])
  number_copy << deleted_integer
  number_copy.to_i
end

def max_rotation(integer)
  integer_copy = integer.dup
  counter = integer_copy.to_s.length

  loop do
    integer_copy = rotate_rightmost_digits(integer_copy, counter)
    counter -= 1
    break if counter <= 1
  end
  integer_copy
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
