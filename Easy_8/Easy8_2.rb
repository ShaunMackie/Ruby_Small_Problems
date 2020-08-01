# Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

# Example

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

=begin

#Problem

- create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into the story I create

#Input

- 4 strings - a noun, verb, adjective, and adverb

#Output

- a string, containing the 4 strings/words that were given by the user

#Examples

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

#Rules

- don't need to validate input but we'll play it straight
- 

#Questions

- how do we handle intergers floats etc etc
- how do we handle empty inputs

#Data Structure

- strings strings strings

#Algorithm

- prompt the user for a noun
- store the noun as a variable
- reast the process for verd adjective and adverb
- create a string and insert the 4 strings using string interpolation
- output the string to the screen

=end

puts "==> Enter a noun: "
noun = gets.chomp

puts "==> Enter a verb: "
verb = gets.chomp

puts "==> Enter an adjective: "
adjective = gets.chomp

puts "==> Enter an adverb: "
adverb = gets.chomp

puts "Do you ever #{adverb} #{verb} with your #{adjective} #{noun}? That's nuts!"