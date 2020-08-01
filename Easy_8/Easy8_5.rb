=begin

#Problem

- write a method that returns a list of all substrings of a string that are palindromic
- each substring must consist of the same sequence of chars forwards as it does backwards
- the return value should be arranged in the same sequence as the substrings appear in the string
- duplicate palindromes should be included multiple times
- we can use the substrings method we wrote in the previous exercise
- case matters; AbcbA is a palindrome but Abcba nor Abc-bA is
- single chars don't count but two or more chars do


#Input

 a string

#Output

an array or strings that are palindromes from substrings of the given string

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

- we can use the method we created in the previous exercise
- 1 char doesn't count, but count all 2 chars or bigger
- if a string has the same pal twice, include it inthe results
- pals should be returned in the order that they appear

#Algorithm and Data Structure
init a variable and point it to an empty array to store the results
convert the string into an array of chars and call each on it
call prepend on the results array and pass in each char as an arguement
join the results array and compare to given string

we want to psas each string from the results of substrings method into the is_palindrom method and return it if it is and ignore if not
call the each method on the return value of the substrings method to see if it outputs what I swant

call select on the return value of the substrings method
call the is_palindrome method
this should return an array of all the values that evaluate to true and to narrow it down I'm going to add on && word.length > 1




=end

def substrings_at_start(string)
  results = []
  counter = 0

  string.length.times do 
    results << string.slice(0..counter)
    counter += 1
  end
  results
end

def substrings(string)
  results = []
  mutated_string = string

  loop do
    results << substrings_at_start(mutated_string)
    mutated_string.slice!(0)
    break if mutated_string.length == 0
  end
  results.flatten
end

def is_palindrome?(string)
  results = []

  string.chars.each do |char|
    results.prepend(char)
  end
  results.join == string
end

def palindromes(string)
  substrings(string).select do |word|
    is_palindrome?(word) && word.length > 1
  end
end

#palindromes('madam')




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