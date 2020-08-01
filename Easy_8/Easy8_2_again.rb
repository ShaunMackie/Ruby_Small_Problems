=begin

#Problem

- create a method that prompts for a noun, verb, adjective, and adverb and displays some retarded text

#Input

nothing - ask for strings

#Output

- a silly string of silliness

#Examples

Do you walk your blue dog quickly? That's hilarious

#Rules + Questions

this is stupid

#Algorithm and Data Structure

prompt for each type of string
output a string using string interpolarion

=end

puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"

verb = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"