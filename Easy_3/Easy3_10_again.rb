=begin

#Problem

- write a emthod that returns true if its integer argument is palindromic, false otherwise
- a palindromic number reads the same way forwards and backwards

#Input

- a integer

#Output

- a boolean - true if the number is palindromic, else false

#Examples

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

#Rules

- a palindromic number reads teh same fowrads and backwards, just like a regular palindrome

#Questions

- how do we handle an invalid input
- how do we handle a negative number

#Data Structure

#Algorithm

initiliaze a local variable and assign it to an empty array to store the results
- convert the integer in an array of strings using to _ s then chars
- call each 
- pass each char to prepend to the results variable
- join the results and convert to integer
- compare to iniital initeger


=end

def palindromic_number?(integer)
  results = []

  integer.to_s.chars.each do |num|
    results.prepend(num)
  end
  results.join.to_i == integer

end

def palindromic_number?(integer)
  integer.digits.join.to_i == integer
end


p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true