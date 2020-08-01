=begin

#Problem

- write a method that aeks two arrays that each contain a list of integers
- and returns a new array tht contains the product of each pair of numbers from the given arrays
- that have the same index
- the arguments will always contain the same number of integers

#Input

- two arrays of integers that are the same length

#Output

- an array where each integer from the two arrays is multiplied together beased on their having the same index

#Examples

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#Rules + Questions

- the two arrays will always be the same length

- how do we handle invalid inputs

#Algorithm and Data Structure

initialize a counter and assig it a value of zero
init a variable to store resutls and assing to an empty array
call the times method on the arr1 lenth
store this in a results variable: multiply the current integer by the array two matching index using the counter for the index
- add 1 to the counter
return the results array


=end

def multiply_list(arr1, arr2)
  results = []
  counter = 0

  arr1.length.times do |_|
    results << arr1[counter] * arr2[counter]
    counter +=1
  end
  p results
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]