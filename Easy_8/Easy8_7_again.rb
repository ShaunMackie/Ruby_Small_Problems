=begin

#Problem

- write a method that takes a string and returns a new string in which every char is doubled

#Input

- a string

#Output

- a new string with every char doubled

#Examples

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

#Rules + Questions

- spaces must be doubled if they're in a string that has chars, but if given an empty string, return an empty string
- how do we handle an invalid input?

#Algorithm and Data Structure

- return string if string.empty? if en empty string isn't being returned naturally
- init a local var and assign an empty string to store hte results
- convert the string to an array of chars
- call each on the array
- shovel 2x char into the results string and return it

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