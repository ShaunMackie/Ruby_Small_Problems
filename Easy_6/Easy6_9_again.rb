=begin

#Problem

- write a method named include? that takes an array and a search value as arguments
- the method should return true if the search value is in the array, false if it isn't
- you can't use include? in your solution

#Input

an array and a value

#Output

a boolean, true if the given value is in the given array, else false

#Examples

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

#Rules + Questions

- you can't use the include? method - gonna write this manually even if there is a method that does what include does

#Algorithm and Data Structure

iterate over the given array using each and compare each element to the given element
- if an element matches the given element return true
else rturn false

=end

def include?(array, item)
  array.each do |element|
    return true if element == item
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == trueS
p include?([], nil) == false
