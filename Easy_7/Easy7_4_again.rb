
=begin

#Problem

- write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced
by its' lowercase version and every lowercase letter by it's uppercase version
- all other characters should be unchanged
- you may NOT use string swapcase - write your own method bitch

#Input

- a string with uppercase and lowercase letters as well as other non alpha chars

#Output

- a new string, where the upcase are swapped for downcase and vice versa
- leave hte non chars untouched

#Examples

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#Rules + Questions

- can't use the swapcase method
- leave the non alpha chars untouched

#Algorithm and Data Structure

initialize a local variable to store the results
convert the stirng into an array
call each on the array
use a conditional statement
if letter == letter.upcase
  shove in letter downcase
  reverse for downcase
else shovel the letter
  return the reult and join it

=end

def swapcase(string)
  results = []

  string.chars.each do |char|
    if char == char.upcase
      results << char.downcase
    elsif char == char.downcase
      results << char.upcase
    else
      results << char
    end
  end
  results.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'