=begin

=begin

#Problem

- write a method that takes a first name, a space, and a last name passed as a single string
- and returns a string that contains the last name, comma, a space, then the first name

#Input

- a string that contains a first name, a space, and a second name

#Output

- a string that has the last name first, then a comma, then the first name

#Examples

swap_name('Joe Roberts') == 'Roberts, Joe'

#Rules + Questions

- how do we handle an invalid input?
  - do we have to return the same string object ora different object?
    - can we mutate the original object?

#Algorithm and Data Structure

conver the string to an array and assign to a variable to manipulate
swap the two elements
join using a comma

=end

def swap_name(string)
  name = string.split
  name[0], name[1] = name[1], name[0]
  name.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'