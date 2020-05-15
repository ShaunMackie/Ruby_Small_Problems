# write a method that returns true if the string passed is a palindrome, false otherwise
# case, punctutation, and spaces matter

def palindrome?(element)
element == element.reverse
end

array = [1, 2, 3, 4, 5]
array2 = [1, 2, 3, 2, 1]

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?(array) == false
puts palindrome?(array2) == true