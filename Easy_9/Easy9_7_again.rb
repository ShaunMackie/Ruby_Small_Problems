=begin

#Problem

- write a method that takes a first name, a space, and a last name passed as a single string arugment
- and returns a string that contains the last name, a comma, a space, and the first name

#Input

- a string containing the first and last name

#Output

- a string with the last name, a comma, a space, and the first name

#Examples

swap_name('Joe Roberts') == 'Roberts, Joe'

#Rules + Questions

- how do we handle an invalid input
  - do we need to account for sometimes there being a middle name or initial?

#Algorithm and Data Structure

init a local var and assign an empty string
- convert the given string to an array using split
- shovel in the last element + a comma and a space + the first element
return the results string
- 

=end

def swap_name(string)
  results = ""

  string = string.split
  results << string[-1] + ", " + string[0]
  p results
end


p swap_name('Joe Roberts') == 'Roberts, Joe'