=begin

#Problem

- write a method that returns true if the string passed as an argument is a palindrome, false otherwise
- a palindrom reads the same forward and backward. 
- case and punctuation and spaces matter

#Input
- a string

#Output

- a boolean; true if the string is a palindrome, false otherwise

#Examples

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

#Rules

- case matters, so an uppercase letter negates a palindrome, if it's only one capital
- punctuation matters, so that must also match
- spacing also matters; spacing must match
- don't use the reverse method

#Questions

- can we mutate the given arugment? We'll operate as if we cannot

#Data Structure

- an array to store the results to compare to the orginal given string

#Algorithm

- initialize a local variable to store the results and point it to an empty array
- #initialize a local variable and assign it to the given argument so we can mutate this newly created variable object
- convert the string ot an array of characters using cars and call the each method on the given array
- call the prepend method on our reesults array and pass in each element as an arugment
- convert the resutls array to a string and compare that string to the given string - this will return true if a palindrome and false otherwise



=end

# def palindrome?(string)
# string == string.reverse
# end

def palindrome?(string)
  results = []
  
  string.chars.each do |char|
    results.prepend(char)
  end
 results.join == string
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
