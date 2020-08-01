

=begin

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

#Problem

write a function that returns true if the word passed in as an argument can be spelled from the given set of blocks, else return false

each block can only be used once

#Input

- a string representing a word to be spelled with the given blocks

#Output

- a boolean - true if the word can be spelled with the given blocks, else false

#Examples

#Rules + Questions

- a block may only be used once
- a word must be able to be spelled from the given blocks, if so return true else return false


#Algorithm and Data Structure

- we need to account for capitalizition, so initialize a local variable and reassign the string to string.upcase

- I want to iterate over the given string
- conver the string to an arry of characters and call each on it
- for each character in the given string, I want to iterate over the blocks
- same as with the word, we call each on the LETTERS array to iterate
- if the letter is found among the blocks, I want to remove the block and procede to the next letter
- return false if letters.join doesn't include the current char? as a guard claus
- using a conditional, if the character is found in a block, delete that block and exit the loop
- else return false
- 
- if a letter is not found among hte blocks, I want ot return false
- if we can find each letter in the word in the blocks, we want to return true

- take the tiniest steps you can then run your code

=end


#LETTERS = ['BO', 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE', 'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']


def block_word?(word)
  blocks = ['BO', 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE', 'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']
  upcase_word = word.upcase
  
  upcase_word.chars.each do |char|
    blocks.each do |block|
      return false if !blocks.join.include?(char)
      if block.include?(char)
        blocks.delete(block)
        break
      end
    end
  end
  true
end



p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true