=begin

#Problem

- write a method that returns a list of all substrings of a string
- that start at the beginning of the original string
- the return value should be arranged in order from shortest to longest

#Input

- a string

#Output

an array of strings, which are substrings of the given string starting at the beginning of the given string
the strings shuld be sorted by length

#Examples

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#Rules + Questions

- how do we handle an invalid input?
  - the strings should be ordered from shortest to longest
  - each substring starts with the first char of the given string

#Algorithm and Data Structure

- init a var to store the reults and assign an empty array
- init a counter with a vlue of 1
- call the times method on the elengh of the given string
- shovel the result of calling the slice method on the string, with an argument of 0, counter
- increment the counter by 1
return the results variable

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

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']