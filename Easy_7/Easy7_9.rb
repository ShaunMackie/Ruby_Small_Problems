=begin

#Problem

- write a method that takes two array arguments in which each array contains a list of numbers
- and returns a new array that contains the product of every pair of numbers that can be formed between
- the elements of the two arrays
- the reulst should be sorted by increasing value
- you may assume that netierh argument is an empty array


#Input

- two arrays, with neiether array being empty

#Output

- an array that contains the product of each possible combination from arr 1 and arr2

#Examples

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

#Rules + Questions

- neither given array will be empty
- multiply each num from arr1 with each num from arr2, but DON"T multiply numbers fromt he same array together

#Algorithm and Data Structure

init a local varialbe to store the results and point it to an empty array

iterate over the first array using each
nest another each onto the second array
times num from array 1 by num from array 2
shoveling the results into the results array
sort the results array and return the results array

=end


def multiply_all_pairs(arr1, arr2)
  results = []
  
  arr1.each do |num|
    arr2.each do |num2|
      results << num * num2
    end
  end

  results.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


