# modify the word_sizes method to exclude non-letters when determining word size.
# for instance, the length of it's is 3, not 4

def word_sizes(string)
  new_string = ''
  string.chars.each do |char|
    if ('a'..'z').include?(char) || ('A'..'Z').include?(char) || (' ').include?(char)
      new_string << char
    end
  end

  result = {}

  new_string.split(' ').map do |element|
    if result.key?(element.length)
      result[element.length] += 1
    else
      result[element.length] = 1
    end
  end
  result
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}