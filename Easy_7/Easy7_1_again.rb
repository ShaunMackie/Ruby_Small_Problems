=begin

#Problem

write a method that combines two arrays and returns a new array that contains all elements
- from both array arguments, with the elements taken in alteration
- both array inputs are non empty and have the same amount of elements

#Input

- two arrays, non empty, with the same amount of elements

#Output

- an array, combining the elements from both given arrays, in alternating order

#Examples

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#Rules + Questions

- both arrays are not empty
- both arrays contain the same number of elements, so no reason to think about an odd number of eelements

#Algorithm and Data Structure

call the zip method on the first array and pass in the 2nd array as an argument
call flatten on the result

=end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']o

