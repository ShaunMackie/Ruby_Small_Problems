# write a method that takes a string arguement and returns a new string that contains
# the value of the original string with all consecutive duplicate characters collapsed into a single character
# you may not use squeeeze

def crunch(string)
  new_string = ''
  string.chars.each_with_index do |char, index|
    next if string[index] == string[index + 1]
    new_string << char
  end
  new_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
