=begin

#Problem

write a method that atkes one argument, an array of integers, and returns the average of all the numbers in the array
- the array will never be empty and the numbers will always be positive integers

#Input

- an array of positive integers

#Output

- an integer

#Examples

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

#Rules

- return the average of all the numbers contained within the given array

#Data Structure

none needed

#Algorithm

- call the sum method on the given array and divide that by the result of calling the length method on the given array

=end

def average(array)
  array.sum/array.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

=begin

#Problem

#Input

#Output

#Examples

#Rules

#Data Structure

#Algorithm

- initialize a local variable `total` to store the sum of all elements in the array and assign it a value of `0`
- iterate over the array using each, adding each element to the value of `total`
- return the value of dividing the total by the size of the array

=end

def average(array)
  total = 0

  array.each do |num|
    total += num
  end

  total/array.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
