=begin

#Problem

- modify the method from the previous ecxercise to exclude non-letters when determining word size
- for example, the length of 'it's' is 3, not 4

#Input
- a string of one or more words

#Output

- a hash, with the word.length - non alpha chars as keys and the count as values

#Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}


#Rules + Questions

- we can use the method from the previous exercies
- we have to remove the non alpha chars from the word.size

#Algorithm and Data Structure

- initialize a varible to store the words after we've deleted the non alpha chars
- call split on the string, then iterate over using each
- delete all non alpha chars
pass this new object to the old method
- 

=end

def word_sizes(string)
  result = {}

  new_string = string.split.each do |word|
    word.delete!('^A-Za-z')
  end

  new_string.each do |word|
    if result.has_key?(word.size)
      result[word.size] += 1
    else
      result[word.size] = 1
    end
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}