=begin

#Problem

- write a method that takes a non-empty string argument and returns the middle char or chars of the argument
- if the argument has an odd length, you should return exactly one char
- if even, you should return exactly two chars

#Input

- a non empty string

#Output

- a string with one or two chars - one char if the griven string argument is odd in length, 2 chars if even

#Examples

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

#Rules + Questions

- if the length of the given string is odd, return 1 char
- if even, return two chars

#Algorithm and Data Structure

- using a conditional statement
- if string.length.odd? select the char that's at string.length / 2 index and return it
- else select the char that's at string.length / 2 and the one before it by using the syntax string.length / 2 - 1, 1



=end

def center_of(string)
  if string.length.odd?
    string[string.length / 2]
  else
    string[((string.length / 2) - 1), 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'