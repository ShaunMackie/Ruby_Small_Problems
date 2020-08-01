=begin

#Problem
- write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result
- of concantenating the shorter string, the longer string, and the shorter string once again.
- you may assume that the strings are of different lengths

#Input
- two strings - one longer than the other


#Output

- a string consisting of the the shorter string + the longer string + the shorter string again

#Examples

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

#Rules

- one string will always be longer than the other
- what if invalid input, ie integer?
- the shorter string goes first, then the longer string, thent he shorter string again
- there are no spaces between the strings
- use concantenation to join the strings

#Questions

#Data Structure

#Algorithm

- first we need to determine which string is longer/shorter
- use a conditional
- if the first string is shorter than the 2nd
- return str1 + str2 + str1
- else
reutnr str2 + str1 + str2

=end

def short_long_short(str1, str2)
  if str1.size < str2.size
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"