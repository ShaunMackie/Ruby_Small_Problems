=begin

#Problem
write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters reversed.

each string will only consist of leters and spaces. 
spaces should be includes only when more than one word is present

#Input
a string of one or more words

#Output
a string of one or more words, where words with 5 or more characters are reversed

#Examples
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

#Rules
personal rule for this exercise is to not use the reverse method
maintain the original spacing
reverse words that are 5 or more characters
otherwise return the original word

#Data Structure
an array

#Algorithm

method 1: reverse a string
initialize an empty array to store the result
transform the string into an array by calling the chars method on the string
iterate over the array using each
call the prepend method on the results array and pass in each element as an argument
convert the results array to a string using join('')
end

alternative:

initialize two variables to act as counters
the first counter has a value of 0
the 2nd counter has a value of -1
initialize a local variable to store the result of converting the the string to an array of words using split
call the times method on the array.length/2
results_array[counter], results_array[counter2] = results_array[counter2], results_array[counter]
add 1 to the first counter
add -1 to the second counter
end

method 2:
initialize an empty array to store the results
convert the string to an array of words using split
use the each method to iterate over the array
use a conditional to call our custom reverse method on the word if the word.length is 5 or greater
store the reversed word in the rsults array
else just store the word as is in the results array
convert the results array using join and return the converted array as a string

=end


def string_reverse(string)
  result = []

  string.chars.each do |char|
    result.prepend(char)
  end
  result.join
end

def reverse_words(string)
  result = []

  string.split(' ').each do |word|
    if word.length >= 5
      result << string_reverse(word) 
    else
      result << word
  end
end
  result.join(' ')
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

