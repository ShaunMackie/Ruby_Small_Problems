=begin

#Problem
write a method that takes one argument, a string, and returns a new string with the words in reverse order.
for my own practice, we won't use the #reverse method

#Input
a string

#Output
a string, with the words reversed

#Examples

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

#Rules

reverse each word in the string, do NOT reverse the actual word, but rather the order of the words

#Data Structure
an array

#Algorithm
if the first test case doesn't work, return an empty string if string.empty?

initialize an empty array to store the results
convert the string to an array of words using the split method
iterate over the array using the each method
calling the unshift method and shoveling the element into the results array
(calling the unshift method on the results array and passing in each element as an argument) - I added this sentence to the algo later, at first I wa confused about how unshift worked
calling the join method on the results array and returning it


['word', 'bob', 'frank']

=end

def reverse_sentence(string)
  results = []

  string.split(' ').each do |word|
    results.unshift(word)
  end
  results.join(' ')
end

# def reverse_sentence(string)
#   string.split(' ').reverse.join(' ')
# end
# my first instinct was to use this method but I wanted to practice using pedac and find a way that was better suited to practicing my process
# so I used the method above

puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
