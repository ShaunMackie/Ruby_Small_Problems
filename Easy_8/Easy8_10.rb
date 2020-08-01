=begin

#Problem

- write a method that takes a non-empty string as an argument
- and returns the middle char or chars of the argument
- if the arugment has an odd length, you should return exactly one char
- if the argument has an even length, return 2 chars



#Input

a string of 1 or more chars

#Output

1 char if string length is odd, 2 chars if even

#Examples

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

#Rules + Questions

#Algorithm and Data Structure
#init a variable with an empty string to store the rsults = return this at the end

if the string length is even
  take the string/length / 2, - 1, then return the char at that index + that index + 1
else if it's odd
  take hte string length, dvidie by 2 and ceil it, then return the char at that index point -1 

=end

def center_of(string)
  if string.length.even?
    return string[(string.length / 2) - 1, 2]
  else
    return string[(string.length / 2.0).ceil - 1]
  end
end

p center_of('Launch') == 'un'
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'