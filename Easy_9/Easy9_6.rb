=begin

#Problem

- write a method that takes a string as an argument and returns an array that contains every word from the string,
 to which you have appended a space and a word length
 - you may assume that words in a string are spearated by exactly one space, and that any substring of non-space chars
 - is a word

#Input

a string

#Output

a string with each word plus a space plus a string representation of the length of the word

#Examples

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

#Rules + Questions

words are separated by exactly one space
- any group of non-spaced chars is considered a word for this exercise

#Algorithm and Data Structure

convert the string to an array
iterate over the array using map
shovel in the space + the length of the word


=end

def word_lengths(string)
  string.split.map do |word|
    word << " #{word.length}"
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []