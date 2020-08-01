=begin

#Problem

- write a method that takes a number as an argument
- if the number is positive, return the negative of tha tnumber
- i fth enumber is zero or ngative, return the number

#Input

an integer, positive or negative or zero

#Output

- a negiatve integer or zero
-

#Examples

negative(5) == -5
negative(-3) == -3
negative(0) == 0

#Rules + Questions

- if the argument is zero, return it
- if the arguemnt is a negative inteer, return it
- if the arg is a pos integer, return the neagative version of that integer
- how do we handle invalid inputs?

#Algorithm and Data Structure

- if the given integer is <= 0, return the argument
- else times the arguent by -1

=end

def negative(integer)
  return integer if integer <= 0
  integer * -1
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0