#Merge Sorted Lists

# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

=begin

#Problem

- write a method that takes two sorted arrays and returns a new array that contains all the elements from both array arguments in sorted order

- you may not provide any solution that requires you to sort the result array. 

- you must build the result array one element at a time in the proper order

- don't mutate the input arrays

#Input

two arrays

#Output

an array

#Examples

# Rules + Questions

- you cna't use the sort method
- you must return an array of both arrays that are sorted

#Algorithm 

- given two arrays, return one array containing all of the elements from both arrays, sorted in decending order

# Implementation Notes 

- initialize a merged_arrays variable and assign the value of adding the two array arguments together
- initialie a counter variable and assign a value of zero
- iterate over the merged_arrays array
  - store the minimum number from the entire array at array[0]
  - increment the counter by 1
  - store the min from counter..end of the array in the counter position
  - repeat till all elements have been sorted

- return merged_arrays

***definitely hacked and slashed at the end - implementation notes do not reflect the solution

=end


def merge (arr1, arr2)
  arr = arr1 + arr2
  length = (arr1 + arr2).length
  results = []
  current_smallest_number = 0
  current_count = 0
  
  
  loop do
    results << arr.min
    current_smallest_number = arr.min
    if arr.count(arr.min) == 1
    arr.delete(arr.min)
    elsif arr.count(arr.min) > 1
      current_count = arr.count(arr.min) - 1
      arr.delete(arr.min)
      current_count.times do
        arr << current_smallest_number
      end
    end
    
    break if results.size>= length
  end
  results
end