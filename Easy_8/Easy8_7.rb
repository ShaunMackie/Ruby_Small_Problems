=begin

#Problem

- write a method that takes a string and returns a new string with every char doubled

#Input

a string

#Output

a string with every char doubled

#Examples

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

#Rules + Questions

- can we use a guard claus at the begining to handle empty strings?
- how do we handle integers floats etc, dobule thos as well?

#Algorithm and Data Structure
- init a variable and assign empty string to store results
- convert string to array of chars
- iterate using each
- using a conditional shove in a single space if char == space
- else shovel 2x chars
- return results variable

=end

def repeater(string)
  results = ''

  string.chars.each do |char|
    results << char * 2
end
  results
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''