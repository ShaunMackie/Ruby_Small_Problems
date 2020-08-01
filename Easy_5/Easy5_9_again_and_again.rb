=begin

#Problem

- write a method that takes a string and returns a new string that contains the value of the original string with all the consecutive duplicate characters collapsed into a single character. 

#Input

- a string

#Output

- a string with all the duplicate consecutive characters collapsed into one character

#Examples

#Rules + Questions

- yo ucan't use the squeeze or squeeez! methods - you must do this manually
- you must return a new string item

#Algorithm and Data Structure

PSC
- remove all the consecutive duplicate characters from the given argument and return what remains

Algo
- initialize a variable to store the results and assign it to an empty string 
- convert the string to an array of characters
- iterate over the array with indexing

- move to the next character if the current character is equal to the next character
- shovel the current character into the results variable 
- return the results

2nd Algo

- initialize a variable results and assign it to an empty string
- initialize a variable index to keep track of thecurrent index, and assign a value of 0
- initialize a loop
- if the current letter, using index of course, is not the same as the last character in the results variable, add the character to the results variable
- increment the index by 1
- break out of the loop when the index is euqal to the string length
return the results vriable



=end

def crunch(string)
  results = ''
  index = 0
  
  loop do
    results << string[index] if results[-1] != string[index]
    index += 1
    break if index == string.length 
  end
  results
end

def crunch(string)
  results = ''
  
  string.chars.each.with_index do |char, index|
    next if char == string[index + 1]
    results << char
  end
  results
end





p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
