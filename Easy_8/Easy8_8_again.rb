=begin

#Problem

- write  amethod that takes a string and returns a new string in which every consonant char is doubled
- Vowels, digits, punctuaton, and whitespace should NOT be doubled

#Input

- a string

#Output

- a new string with every consonant doubled

#Examples

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

#Rules + Questions

- each consonant should be doubled
- every other char including whitespace should NOT be dbouled

#Algorithm and Data Structure
- init a glocal var and assign an array of consonants
- init a var to store the rsulst and assign an empty string
- conver string to array of chars
- call each on the array
- if the current char is an alhpha char, shovel double it into the results
- use a conditional
- else shovel as is into the results
- return the results string

=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  results = ''

  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      results << char * 2
    else
      results << char
    end
    end
    results
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""