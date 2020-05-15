#write a method that retuns tru if the integer passed is a palindrome, false otherwise

def palindromic_number?(integer)
  integer == integer.to_s.reverse.to_i
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

