=begin

#Problem

- write  amethod that determines and returns the ASCII string value of a string that is passed in as an argument
- the ASCII string value is the sum of the ASCII of every character in the string
- you may use STRINGord to determine the ASCII value of a character

#Input

a string

#Output

an integer representing the ASCII value of the given string

#Examples

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

#Rules + Questions

- we can use the .ord method
- return the string value represnted by an integer

#Algorithm and Data Structure

- initialize a local variable to store the running ASCII total
- convert the string into an array of characters using char
- call each on the new array
- call .ord on each element
- add the value to the local variable and return it

=end

def ascii_value(string)
  results = 0

  string.chars.each do |char|
    results += char.ord
  end
  results
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0