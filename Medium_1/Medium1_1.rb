=begin

#Problem

- write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified

#Input

- an array

#Output

- a new array, with the first element at the back of the array

#Examples

#Rules + Questions

- you can't use the array.rotate method
- the original array object should not be modified

#Algorithm and Data Structure

- initalie a variable and make a copy of the given array argument
- shift the first element and move it to the back
- init another var to store the shifted element 
- shovel the shifted element into the array
- return the new array


=end


def rotate_array(array)
  array_copy = array.dup
  shifted_element = array_copy.shift
  array_copy << shifted_element
  array_copy
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1] #== true
p x == [1, 2, 3, 4] 