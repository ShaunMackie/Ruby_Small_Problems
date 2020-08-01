# write a method that takes two arrays of integers and returns a new array that contains the product
# of each pair of numbers from teh arguments of the same index

def multiply_list(arr1, arr2)
result = []
counter = 0

arr1.length.times do |num|
 result << arr1[counter] * arr2[counter]
 counter += 1
end
p result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]