=begin

#Problem

- write a method that takes a string argument and returns true if all of the alpha chars inside the string are uppercase
else false
  - chars that are not alphabetic should be ignored


#Input

a astring 

#Output

a boolean, true if the given string has all upcase chars, else false

#Examples

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

#Rules + Questions

- ignore non alpha chars
- all alpha chars must be uppercase to reutnr true

#Algorithm and Data Structure

compare te given string to the given string after calling the upcase method

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