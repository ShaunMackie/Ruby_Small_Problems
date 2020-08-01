=begin
#Problem 
#write a method that takes a positive integer as an argument and returns a list of the digits in that number

#Input
#a positive integer

#Output
an array of single digits

#Examples
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

#Rules
separate the given integer into individual digits, place them into an array, and return that array

#Data Structure


#Algorithm
turn the integer into a string using the to_s method
call chars to separate each element into an array
iterate over the array using map, calling the to_i method on each element

=end

def digit_list(integer)
  integer.to_s.chars.map do |element|
    element.to_i
  end
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]  