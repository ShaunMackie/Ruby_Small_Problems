=begin

#Problem

- modify the method from the previous exercise so it ignores non-alpha chars when determing whether it should upcase or downcase a char

#Input

- a string

#Output

- a different string object with the same values with every 2nd char upcased

#Examples

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#Rules + Questions

- ignore non alpha chars when toggling cases
- start the toggling by upcasing the first char

#Algorithm and Data Structure

- I want to upcase every 2nd character, starting with the first character
- when deciding whether to upcase a character, I want to ignore spaces and quotes etc
- so if I upcaes th first letter and the 2nd char is not a letter, ignore that when deciding whether to upcase the next character

- init a var and assign the string.downcase.chars
- init a variable and assign a value of true

- iterate over the variable using map 
- if char is non alpha, then char

- elsif the variable is true, upcase it and toggle it to false first!- if this doesn't work, we'll init a var and use each and shovel it in
- else toggle it to true and return the char
- join at the end

=end

def staggered_case(string)
  new_string = string.downcase.chars
  switch = true
  
  new_string.map do |char|
    if !('a'..'z').to_a.include?(char)
      char
    elsif switch == true
      switch = false
      char.upcase
    else
      switch = true
      char
    end
  end.join
end






p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'