=begin

#Problem

- write a method tht takes a string of digits and returns the appropriate number as an integer.
- the string may have a leading + or - sign
- if the first character is +, return a positive number
- if the first charachter is - , return a negative number
- if no sign is given, return a positive number
- strings will always contain a valid number
- yo may not use any ruby built-in methods, but you can use the def from the preivous exercise

#Input

- a string of digits that may or maybe not start with a + or - sign

#Output

- an ainteger, positive or negative

#Examples

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

#Rules + Questions

- you can't use any built in ruby methods
- strings will always convert to valid numbers
- inputs will alwyas be valid
- if negative sign at begining of string, number is negative (times by -1?)
- if + sign, it's a positive number
- we cna use the def we made in the lasdt question

#Algorithm and Data Structure

- adjust the def from the last exercise to delete + sign if string contains it
initialie a local variable and assign it a value of -1 to use to conert a number to negative if necessary
- delete the minus - sign and multiply the result by -1 if the string contains a - sign
- use a conditional, if there's a minus sign, delete it, add -1 to negative variable
- then at the end, if negative variable has a value, multiply result by negatiave, else just reutnr result
=end


HASH = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9}




def string_to_signed_integer(string)
  negative = 0
  result = 0 
 
  string.delete!("+")

  if string[0] == '-'
    negative -= 1
    string.delete!("-")
  end

  counter = string.size - 1

  string.chars.each do |num|
    result += HASH[num] * 10 ** counter
     counter -= 1
  end

  if negative < 0
    result * negative 
  else
    result
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100