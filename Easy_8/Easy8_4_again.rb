=begin

#Problem

write a method that returns a list of all the substrings of a string
- ther eturned list should be ordered where in the string the substring begins
- the means that all substrings that start at position 0 should come first, 
- then all substrings that start at position 1 and so on
- since multiple substrings will occur at each position, the substrings at a given position shold be returned in order from shortest to longest
- you should use the method we wrote in the previous exercise


#Input

- a string

#Output

an array containing all the substrings found in the given string, ordered first by their starting char and then by their length

#Examples

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

#Rules + Questions

- you can use the method from the previoud exercise
- all strings should be ordered first by char and then by length

#Algorithm and Data Structure

- call the predef on the strin from the first char
- move to the next char and clal it again until it's moved through all the chars

init a var to store results and point to empty array
init a counter with value of zero

- call the times method on the string length
- shovel the results to the resuls var after we call the predef and pass in string[counter..-1] as an argument
- increment the counter by 1
- return the results array and flatten it

=end

def leading_substrings(string)
  results = []
  counter = 1

  (string.length).times do
    results << string.slice(0, counter)
    counter += 1
  end
  results
end

def substrings(string)
  results = []
  counter = 0

  (string.length).times do
    results << leading_substrings(string[counter..-1])
    counter +=1
  end
  results.flatten
end

def find_substrings(string)
  results = []

  string.chars.each.with_index do |char1, idx1|
    string.chars.each.with_index do |char2, idx2|
      results << string[idx1..idx2]
    end
  end 
  results
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

p find_substrings(abcde) == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]