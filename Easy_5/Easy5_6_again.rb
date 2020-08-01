=begin

#Problem

- write a method that takes a string with one or more space spearated words
- and reutnrs a hash that shows the number of words of different sizes
- words consist of any string of chars that do not include a space

#Input

- astring

#Output

- a hash that shows the numer of words of different sizes. 

#Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

#Rules + Questions

- each word is spearated by one or more spaces
- the hash key is the word length, and the hash value is the number of times a word with that length appears in the given string

#Algorithm and Data Structure
- initialize a variable to store an empty hash
- convert the string into an array using split
- iterate over the array using each
- call the length/size method on the word
- if the hash contains a key that is the lenth of the word, add 1 to the value of the key
- else create a key/value pair where the size is the key and the value is 1
return the hash at theend

=end

def word_sizes(string)
  result = {}

  string.split.each do |word|
    if result.has_key?(word.size)
      result[word.size] += 1
    else
      result[word.size] = 1
    end
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}