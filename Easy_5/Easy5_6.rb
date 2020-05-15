# write a method that takes a string with one or more space-separated words
# and returns a hash that shows the number of words of different sizes
# words consist of any string of characters that do not include a space

def word_sizes(string)
  result = {}

  string.split(' ').map do |element|
    if result.key?(element.length)
      result[element.length] += 1
    else
      result[element.length] = 1
    end
  end
  result
end

# puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# puts word_sizes('') == {}
