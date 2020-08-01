=begin

#Problem

- write a method that takes a string aargument, and returns true if all the alpha chars inside the string are uppercase,
else false
  - ignore non alpha chars

#Input

- a string

#Output

a boolean, true if all alpha chars are upcase, else false

#Examples

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

#Rules + Questions

- return true if all the alpha chars in the given string argument are uppercase, else return false
- ignore non alpha chars when determining case
- how do we handle an invalid input?

#Algorithm and Data Structure

- string = string.upcase

=end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true