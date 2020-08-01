=begin

#Problem

write a method that randomly generates a number between 20 and 200
- and outputs a string "Teddy is X years old!"

#Input

none

#Output

- a string "Teddy is X years old!"

#Examples

Teddy is 69 years old!

#Rules

- the randomly generated number must be between 20 and 200

#Data Structure

a string with string concantenation

#Algorithm

contruct the string and insert the rand method on the appropriate range as concantonation

=end

def teddy
  puts "Teddy is #{rand(20..200)} years old!"
end

teddy

