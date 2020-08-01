
=begin

#Problem

- write a method that takes a sentence string as input, and returns the same string with any sequence of thew ords
- zero, one, two, three, four, five, six, seven, eight, nine converted to a string of digits

#Input

a string containing some numbers written as words

#Output

the same string but the numbers as words converted to their integer equivalents

#Examples

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

#Rules

- any words that represent an integer from 0-9 must be converted to their integer counterpart

#Data Structure

- a hash to represent the string + interger pairings
- an array to separate each word so I know what word is a string representation of an integer

#Algorithm

initialize a hash to repepresent string/interger pairs for the numbers
- initialize a local variable called result and assign it to an empty array
- separate the string into individiaul words using split
iterate over the array of words using each
using a conditional statement, if the hash contains a key that matches the string object, shovel the value of the key/value pair into the empty array
elsif the hash contains a key that matches the string ojbect - the last character, shovel the key + the last character
or if the hash contains a key that matches the string object - the last character, shovel in the value + the last character
else just shovel the string as is
  return the result after joining it

=end


NUMBERS = {'one'=> 1, 'two'=> 2, 'three'=> 3, 'four'=> 4, 'five'=> 5}

def word_to_digit(string)
  result = []

string.split.each do |word|
  if NUMBERS.has_key?(word) 
    result << NUMBERS[word]
  elsif NUMBERS.has_key?(word[0..-2])
  result << word.gsub!(word[0..-2], NUMBERS[word[0..-2]].to_s)
  else
    result << word
  end
end
p result.join(' ')
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


