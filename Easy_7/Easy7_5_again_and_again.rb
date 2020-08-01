=begin

#Problem

- write a function that takes a string as an argument, and returns a new string that that contains the same value using a staggered cap scheme in which every other char is capped, and teh remaining chars are lowercase. 

- chars that are non alpha should not be changed but do count when switching cases.

#Input

a string

#Output

- a string containing the same value but with every 2nd char upcased - starting from the first char

#Examples

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#Rules + Questions

- capitalize every 2nd letter
- don't do anything with non alpha chars, but DO count them when alternating cases
- the chars that are not upcased, should be downcased when appropriate

#Algorithm and Data Structure

- I want to convert the entire string to one case, then only change every 2nd char to  a different case

- call map with index on a upcased array of letters from the string
- use a conditional to downcase if the index is odd
- join that bitch at the end

2nd way
- either upcae or downcase the entire string and use reassignment
- init a counter with value of zero for index following
- call the times method on the length of the string
- use a ternary operator, if string[counter].odd or even char.upcase! : char
- increment the counter
- return the string variable

=end

def staggered_case(string)
  string.upcase.chars.map.with_index do |char, idx|
    if idx.odd?
      char.downcase
    else
      char
    end
  end.join
end

def staggered_case(string)
  new_string = string.downcase.chars
  counter = 0
  
  new_string.length.times do 
   if counter.even?  
      new_string[counter] = new_string[counter].upcase! unless !('a'..'z').to_a.include?(new_string[counter])
   else
     new_string[counter]
  end
    counter += 1
  end
  p new_string.join
end

def staggered_case(string)
  results = ''
  
  string.downcase.chars.each.with_index do |char, idx|
    if idx.odd? 
      results << char
    else
      results << char.upcase
    end
  end
  results
end





p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'