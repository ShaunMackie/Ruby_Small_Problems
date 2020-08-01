=begin

#Problem

- write a method that takes a string of digits and returns the appropriate number as an integer.
- the string may have a leading + or - sign
- if the first character is a +, the number is positive
- if the first character is -, the number is negative
- the given string will always contain a valid number
- we can use the method from the previous exercise

#Input

- a string representing an integer

#Output

- an integer, with a leading - sign if the number is negative

#Examples

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

#Rules + Questions

- if a number has no sign or a + sign, the number is positive
- if the number has a - sign, the number is negative
- we can use the def from the previous exercise
- all inputs will be valid

#Algorithm and Data Structure

- take the tiniest steps you can then run your code

- let's just run the previous definition to see where we currently stand

- if the gieven string has no leading sign, we can just run it through the previous def
- if the given string has a + sign, we can delete this sign then run it through the previous def
- if the given string has a - sign, we can delete this sign, run it through the previous def, and multiply the result by -1 to convert it to a negative number

- so the first way I wanna complete tihs is to use a conditional
- if the leading char is a +, delete it and run it rhough the prev def and return the result
- if it's a - delete it and run it rhoguh the prev def and times the resluts by - 1
- else just urn it through the prev def

- I think no matter which way I do this, the first thing I need to do is check for a symbol at the begginning, remove the symbol, then convert the result to a negative number when it's a - sign

=end



NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

def string_to_integer(string)
  results = 0
  reversed_string = string.reverse.chars
  
  reversed_string.each.with_index do |char, idx|
    results += NUMBERS.index(char) * 10 ** idx
  end
  results
end

# def string_to_signed_integer(string)
#   if string[0] == '+'
#     string_to_integer(string[1..-1])
#   elsif string[0] == '-'
#     -string_to_integer(string[1..-1])
#   else
#     string_to_integer(string)
#   end
# end

def string_to_signed_integer(string)
  case string[0]
    
  when '+'
    string_to_integer(string[1..-1])
  when '-'
    -string_to_integer(string[1..-1])
  else
    string_to_integer(string)
  end
end




p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100