=begin

#Problem

- write a method that takes a string and returns a new string
- that contains the original value using a staggered capitalization scheme
- in which every other char is capped, and the remaining chars are lowercase
- chars that are not letters should not be changed, but count as chars when switching between cases

#Input

#Output

#Examples

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#Rules + Questions

- cap every other char if it's a letter
- else ignore that element for capping but count it when switching

#Algorithm and Data Structure

initialize a constant and assign it a range a..z for the alphabet
call downcase on the given string
call map on the string after converting to an array of chars
if alpha include char and index.odd char upcase
  same thing for even and downcase
else char
  join at the end


=end

def staggered_case(string)
  alphabet = *('a'..'z')
  
  string.downcase.chars.map.with_index do |char, index|
    if alphabet.include?(char) && index.even?
      char.upcase
    elsif alphabet.include?(char) && index.odd?
      char.downcase
    else
      char
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'