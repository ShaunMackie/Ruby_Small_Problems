=begin

#Problem

- write a method that takes a string and returns a new string in which every consonant character is doubled
- vowels, digitis, punctuation and white spaces should NOT be doubled

#Input

a string

#Output

- a string with all consonants doubled and all vowels, punctuation and spaces NOT doubled

#Examples

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

#Rules + Questions

- only double consonants

#Algorithm and Data Structure

init a global cariable with all constants in it and all upcase as well
init a LV to store the results, assign an empty string to stroe results
convert string to arry of chars
iterate using each
use a conditional statemnt
if constonants include char
  shovel 2x char into results
else
  shovel char into results
  return results


=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z)

def double_consonants(string)
  results = ''

  string.chars.each do |char|
    if CONSONANTS.include?(char)
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