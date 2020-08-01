=begin

#Problem

- given a string of words separated by spaces, write a method tht takes this string of words and returns a string in which
- the first and last letters of every word are swapped

- you may assume that every word contains at least one letter, and that the string will always contain at least one word.
- you may also assume that each string contains nothing but words and spaces

#Input

- a string of one or more words

#Output

- a string where each word has the first and last letters exchanged with each other

#Examples

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

#Rules + Questions

- every word cotains at least one letter
- every stirng will contain at least one word
- strings will only contain words and spaces
- capitalization should be maintained and so should spacing

#Algorithm and Data Structure

convert the string into an array of words using split and assign this to a variable so we can manipulate the string
iterate over the array using each with index
for each word, word[0], word[-1] = word[-1], word[0]
  join the array back to a string at the end

=end

def swap(string)
  result = string.split
  result.map do |word|
   word[0], word[-1] = word[-1], word[0]
  end
 result.join(' ')
end



p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'