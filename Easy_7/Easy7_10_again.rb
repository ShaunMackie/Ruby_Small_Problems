=begin

#Problem

- write a method that returns the next to last word in a string passed in as an argument
- words are any sequence  of non-blank characters
- the string input will always contain at least two words

#Input

- a string containing two or more words spearated by spaces

#Output

the next to last word in the string


#Examples

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

#Rules + Questions

a string will always contain at least two words
return the 2nd to last word in the given string

#Algorithm and Data Structure

separate the given string into an array
call [-2] on the string

=end

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'