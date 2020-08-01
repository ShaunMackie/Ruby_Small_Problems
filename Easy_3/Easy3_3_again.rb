=begin

#Problem

- write a program that will ask for a string of one or more words 
- and returns the number of characters in the string
- spaces are not counted as characters
- return a sentence that tells the user how many characters are in the string, and include their string

#Input
- a string of one or more words

#Output

a string that tells the users how many characters are in the stirng they input

#Examples

input:

Please write word or multiple words: walk

output:

There are 4 characters in "walk".

input:

Please write word or multiple words: walk, don't run

output:

There are 13 characters in "walk, don't run".


#Rules

- spaces are not to be counted as a character

#Questions

#Data Structure

- a string for the final output

#Algorithm

- prompt the user to input one or more words
- inititlaize a variable to store the result
- iniitalize a variable to store the number of characters in the string, 
- and call the correct methods to calculate the length with no spaces
- output a string telling the user how many characters are in there string, and include thier
- string at the end
=end

puts "==> Please write word or multiple words:"
input = gets.chomp

length = input.split.join.size

puts "==>There are #{length} characters in '#{input}'."