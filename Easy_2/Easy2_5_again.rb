=begin

#Problem

- write a program that will ask for the user's name. 
- the program will then greet the user
- if the user write "name!" then the cputer yells back to the user

#Input

- a string

#Output

- a string

#Examples

What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?


#Rules

- if the user input ends with an exclaimation point, the output is in all caps and extended
- otherwise if no explaimation point ends the user inpout, the output is shorted to Hello #{input}

#Questions
- do we accept an empty input?
- if the user iputs moe than one ! at the end of their name, do we delete them all or just hte last one?

#Data Structure

multiple strings

#Algorithm
initialize a local variable called name and point it to an empty string so we can access this variable outside of the loop
ask the user for their name
store the result in a variable
if the input is blank, notify the user that it was blank and ask again using a loop
if hte input is not blan, break out of the loop

using a conditional statement, check to see if the last character of te input is an exclamation point
if it is, return the extended string, calling the #upcase method on the variable name and deleting the last character of the variable name
  if not return Hello user

=end

name = ''

loop do 
  puts "What is your name?"
  name = gets.chomp
  break if name.empty? == false
  puts "Oops, you forgot to enter your name."
end

if name[-1] == '!'
  name = name.upcase.slice(0..-2)
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end