=begin

#Problem

write a method that can rotate the last n digits of a number
- note that rotating just 1 digit results in the original number being returned - dafuq?
- you can use the def we made in the prvious exercise
- you can assume n is always a positive number

#Input

- two positive integers - the first being the integer to rotate, the 2nd being the number of times it should be rotated

#Output

- a rotated version of the 1st arguemnt

#Examples

#Rules + Questions

- you can use the def we made in the previous exercise
- both given integers are always positive
- if the given arguemnt is 1, return the original number??

#Algorithm and Data Structure

- so with the n2d given integer arguemnt, this represents which integer needs to be moved to the back of the integer
- so if the given number is 4, that means the 4th number from the back needs to go to the back 

- we can determine the index position of the integer that needs to get moved to back by taking the integer length and subtracting the given argument

- duplicate the given integer argument and store in a variable
- convert it to a string
initalize  avariable and assign it the value of the object at [integer.length - 1]
- delete the integer at index(2nd argument)
- shovel the deleted integer into the number_copy
- convert back to an integer and return it


=end

def rotate_rightmost_digits(integer, multiplier)
  number_copy = integer.dup.to_s
  deleted_integer = number_copy[number_copy.length - multiplier]
  number_copy.delete!(number_copy[number_copy.length - multiplier])
  number_copy << deleted_integer
  number_copy.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917