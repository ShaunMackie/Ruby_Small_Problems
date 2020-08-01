=begin

#Problem

- write a method that takes an array of numbers
- and returns an array with teh same number of elelemnts
- and each element has the running total from the original array

#Input

- an array of integers

#Output

- an array of integers, with the elements being transformed to represent the sum of the previous numbers

#Examples

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

#Rules + Questions

- how do we handle an array that contains non integers
  - how do we handle negative numbers

- we have to return an array that consists of the sum of the previous numbers

#Algorithm and Data Structure

initialize a local variable to keep track of the current total and assign it to zero
- call map on the given array
- add the current element to the total

=end

def running_total(array)
  total = 0

  array.map do |num|
    total += num
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []