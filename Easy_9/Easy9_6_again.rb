=begin

#Problem

- write a method that takes a string as an agument
- and returns an array that contains every word from the string
- to which you have appended a space and a word length
- you may assume that words in the string are separated by exactly one space
- and that any substring of non-space chars is a word

#Input

- a string 


#Output

- an array containing every word from the given string, with a space and an integer representing the length of the word attached to each word

#Examples

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

#Rules + Questions

- words in the given strings are spearated by exactly one space
- we must add a space and an integer reprenseting the size of each word to each word
- how do we handle invalid inputs?

#Algorithm and Data Structure

- convert the given string to an array of words using split
- iterate over the array using map
- string + space + string.size.to_s

=end

def word_lengths(string)
  string.split.map do |word|
    word + ' ' + word.size.to_s
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]