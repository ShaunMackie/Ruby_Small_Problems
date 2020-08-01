=begin

#Problem

- write a method that returns a list of all the substrings of that string
- the returned list should be ordered by where in the string the substring begins
- this means that all subjstrings that start at poisition 0 should come first, then all at posittion 1, etc
- since multiple substrings will occur at each position, the substrings at a given pisition should be returned in order
from sshortest to longest
- you should use the method from the previous exercise

#Input

#Output

#Examples

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

#Rules + Questions

- strings should be ordered starting at index 0, then 1, etc and from shortest to longest
- use the method from the previous exercise

#Algorithm and Data Structure
- what I need to do is pass in the string to the old method
- delete the first character of tehe string and do it again
- do that until there are no characters left
  - I'll assume I cant mutate the string so I'll reassign it


  itit a local variable and assing it to an empty arry to store the results
  - itit a local variable so we can mutate the string
  init a loop call the old method and pass in mutated string as an argument
  delete the first char of the mutated string
  break the loop when mutated string = 0
  shovel the results to the restuls array and flatten the result





=end

def substrings_at_start(string)
  results = []
  counter = 0

  string.length.times do 
    results << string.slice(0..counter)
    counter += 1
  end
  p results
end

def substrings(string)
  results = []
  mutated_string = string

  loop do
    results << substrings_at_start(mutated_string)
    mutated_string.slice!(0)
    break if mutated_string.length == 0
  end
  results.flatten
end



p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]