=begin

#Problem

- given a string that consists of some words, all lowercased, and an assortment of non-alphabetic charachters,
- write a method that returns that string with all of the non-alphabetic characters replaced by spaces
- if one or more non-alpha character occurs in a row, you should only have one space in the rsults
- the result should never have consecurtive spaces


#Input

- a string

#Output

a string

#Examples

cleanup("---what's my +*& line?") == ' what s my line '

#Rules + Questions

- return a string with all non AB chars replaced by spaces
- don't have more than one space in a rotw

#Algorithm and Data Structure

- initialie a constant to store the alphabet
intitlaize a variable to store the result
turn the string into an array of chars
iteratte ove rhte arra, replace any nonchar with a space unless the previous char was a space
convert the results array to a string and return it




=end

ALPHABET = ('a'..'z').to_a

def cleanup(string)
  result = []

  string.chars.each do |char|
    if ALPHABET.include?(char)
      result << char
    else
      result << ' ' unless result[-1] == ' '
    end
  end
p result.join
end

p cleanup("---what's my +*& line?") == ' what s my line '


