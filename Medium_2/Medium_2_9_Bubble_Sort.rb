=begin

#Problem

- a bubble sort works by making multiple passes(iterations) through an array
- on each pass, each pair of consecutive elements is compared
- if the first of the two elements is greater than the second, the two elements are swapped
- this process is repeated until a complete pass is made without performing any swaps

- write a method that takes an array as an argument, and sorts it using the bubble algorythm
- we will be mutating the given array argument
- all given arguments will have at least two elements

#Input

- an array

#Output

- the same array

#Examples

# Rules + Questions

- all given arrays will have at least two elements
- we must use the bubble sort method

#Algorithm 

- create a function that sorts arrays using the bubble sort method

# Implementation Notes 

- I think we need a variable to store a copy of what the array looks like after the last pass
- that way we can break out of the loop when the current array is equal to the copy of the array from the last pass
- I think we'll use a counter to track the index
- I think I'll use the times method to iterate
- I think I'll put the times method inside a loop that breaks when the current version is equal to the actual version?

- initialize a counter variable and assign a value of zero
- init a variable current_state and assign to array
- initialize a loop
- initialize another loop inside the loop
- check to see if the first element is greater than the next
  if it is, swap them
- move to the next element and repeat
- do this until you've checked all elements
- check the current state of the array against the copy
  if it's the same, break out of the loop
  else repeat the process
- make sure to reset the counter variable to zero

=end
require 'pry'
def bubble_sort!(array)
  counter = 0
  current_state = array

  loop do
    (array.length - 1).times do 
      #binding.pry
      if array[counter] > array[counter + 1]
        array[counter], array[counter + 1] = array[counter + 1], array[counter]
      end
      counter += 1
    end
    break if current_state == array.sort
    current_state = array
    counter = 0
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]


array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)