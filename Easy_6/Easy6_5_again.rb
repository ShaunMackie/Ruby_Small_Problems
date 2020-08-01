=begin

#Problem

- write a method that takes an array as an argument
- and returns a new array with the elements of the original list in reverse order
- do not modify the original list

#Input

#Output

#Examples

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]  

#Rules + Questions

#Algorithm and Data Structure

- iniitalize a local variable and point it to an empty array to store the results
call each on the given array
- call prepoend on the results array and pass in each element as an argument
return the new array

=end

require 'pry'

def reverse(array)
  results = []

  array.each do |element|
    results.prepend(element)
    binding.pry
  end
  results
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]  
