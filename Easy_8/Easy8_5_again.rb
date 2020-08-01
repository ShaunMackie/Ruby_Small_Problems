=begin

#Problem

- write a method that returns a list of all the susbstrings tha tare palindromic
- the return value should be arranged in the same sequence as the substrings appear in the string
- duplicate palindromes dhould be included multiple times

- use the def from the preivous exercise
- signle chars are NOT palindromes
- case matters, palindromes must have all the same case

#Input

- a string

#Output

- an array of strings that are palindromes found in the given string, which are case sensitive

#Examples

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

#Rules + Questions

- palindromes are case sensitive
- single character stinrrgs are NOT palindromes
- use the def from the previous exercise

#Algorithm and Data Structure

- take the return value of the previous def and run each string to see if it's a palindrome
- write a method to determine if a stirng is a palindrome:
- init a var and point to an empty string
- convert the string to an array of chars
- interate over the array using each
- call prepend on the empty string and pas in each char
- compare the given string to the results var

- edit the 

write the final method that takes the return value of the previous method and passes those results through the palindrom finder 
init a var to store the results of calling the substrings method on the given string
call select on the variable and pass in the is_palindrome? method as an argument and add on that the string length is gerater tan 1


=end

def leading_substrings(string)
  results = []
  counter = 1

  (string.length).times do
    results << string.slice(0, counter)
    counter += 1
  end
  results
end

def substrings(string)
  results = []
  counter = 0

  (string.length).times do
    results << leading_substrings(string[counter..-1])
    counter +=1
  end
  results.flatten
end

def is_palindrome?(string)
  results = ''

  string.chars.each do |char|
    results.prepend(char)
  end
  results == string
end

def palindromes(string)
  results = substrings(string)

  results.select do |text|
    text.length > 1 && is_palindrome?(text) 
  end
end




p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]