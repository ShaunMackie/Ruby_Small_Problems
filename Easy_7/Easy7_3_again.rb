=begin

#Problem

- write a method that takes a single string arugment and returns a new string that contains the original value of the argument 
- with the first character of every word capitalized and all other letters lowercase

- you may assume that words are any sequence of non-blank characters

#Input

a string of one or more words separated by a single space

#Output

a string with the first letter or each word capped, and the rest of the words lowercase

#Examples

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#Rules + Questions

- any stirng sepearated by a space is consiered a word
- how do we handle empty inputs

#Algorithm and Data Structure
iniitalize a local variable and assign it the vlue of the code below
turn the string into an array of words
call map and call downcase capitaliez on each word
convert the array back into a string by calling join on the local variable storeing hte results of map

=end

def word_cap(string)
  results = string.split.map do |word|
  word.downcase.capitalize
  end
p  results.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'