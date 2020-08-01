=begin

#Problem

write a method that returns the next-to-last word in the string passed in as an argument

- words are any seuence of non-blank characters

- the input will always be a string with at least 2 words

#Input
- a string of 2 or more words

#Output

- a string, which is the 2nd to last word in the given string/sentence

#Examples

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

#Rules
- 

#Data Structure

- an array

#Algorithm

- turn the string into an array of words using split
- return the 2nd to last word using index reference 

=end

def penultimate(string)
  array = string.split
  array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'