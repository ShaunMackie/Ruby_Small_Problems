# write a method that takes a string of words separated by spaces and returns a string with
# the first and last letter of every word swapped
# each word contains at least 1 word and nothing but words and spaces


# it's something like' separate the string into words, then access the first and last character using
# word[0] and word[-1], maybe putting each character into a variable then accessing it
# then iterating over each word in the string
# then joining the string back together and printing it out

def swap(string)
result = []

string.split.map do |word|
first = word[0] 
last = word[-1] 
word[0] = last
word[-1] = first
result << word
  end
  p result.join(' ')
end


swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'