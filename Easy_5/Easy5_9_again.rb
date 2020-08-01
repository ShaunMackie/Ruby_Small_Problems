=begin

#Problem

- write a method that takes a string as an argument and returns a new tsring that contains the value of teh original string
- with all the consecutive duplicate characters collapsed into a single character. 
- you may not use string squeeze or string squeeze!

#Input

- a string

#Output

- a string, with the duplicate consecutive characters removed

#Examples

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

#Rules + Questions

- what happens if a word like "happens" is in the string, do we need to keep the two 'p's?
  - is it just chars or anums or would this apply to punctuation and other symbols
  - we do need to rmeove the duplicate integers

#Algorithm and Data Structure

initialize a variable to store the results and assign it to an empty array
- convert the given string to an array of chars, call each on the new array
- shovel each char into the results variable unless the last char in the results variable is the same as the current char
- join the results array and return it

=end

def crunch(string)
  results = []

  string.chars.each do |char|
    results << char unless results[-1] == char
  end
  results.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''