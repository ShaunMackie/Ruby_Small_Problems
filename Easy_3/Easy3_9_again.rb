=begin

#Problem

- write another method that returns true if the string passed as an argument is a palindrome, false otherwise
- the method should be case insensitve, and it should ignore all non-alphanumeric characters.
- you are allowed to use the previously created palindrome? method

#Input

- a string

#Output

- output a boolean; true if a palindrome else false

#Examples

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

#Rules

- we can use the palindrome method wr reated in the last exercise, but we don't have to
- palindrome's are case insensitve
- we want to ignore all non-characters; ignore spaces and punctuation, as well as capitalization

#Questions

- can we mutate the argument? let's assume we cant

#Data Structure

#Algorithm

define a method called real_palindrome? that takes one argument string
- if we can mutate, we'd call downcase!
- but for this we'll initailize a local variable and point it to the string and call downcase
- call the delete method on the downcased string and passin the alphabet as an argument, to reduice
- the object to charactesrs only
- pass this object the palindrome method from the previous

#Algorithm

- initialize a local variable to store the results and point it to an empty array
- initialize a local variable to point to the stirng ojbect, so we can mutate it without mutating the original object
- call downcase on the string, then chain delete to delete all non-alphabet characters
- convert the new string to an array of characters using chars, call each on it
- call the prepend metod on the results array and pass in each char as an argument
- join the results array together and compare it to the new string, which has no spaces or quote etc



=end

def real_palindrome?(string)
  results = []
  new_string = string.downcase.delete('^A-Za-z')

  new_string.chars.each do |char|
    results.prepend(char)
  end
  results.join == new_string
end

def palindrome?(string)
  results = []
  
  string.chars.each do |char|
    results.prepend(char)
  end
 results.join == string
end

def real_palindrome?(string)
  object = string.downcase.delete('^A-Za-z')

  palindrome?(object)
end



p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
