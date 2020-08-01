=begin

#Problem

- write a method that akes two arrays as arguments, and returns an array that contains all of the values from the arguments arrays
- there should be no duplication of values in the returned Array, even if there are duplicates in the original arrays

#Input

- two arrays of integers

#Output

- one array of integers, containing all the intgers from the two given arrays, with no duplicates

#Examples

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#Rules + Questions

- how do we handle an invalid input


#Algorithm and Data Structure

- add the two given arrays together and call uniq 
- or initialize a local variabble, then store the reselt of adding the two arryas toegher, then call uniq on it and return it

=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]