# write a method that takes 2 arrays and returns an array that contains all the values from both arrays
# there should be no duplication of values in the returned array, even if there are duplicates in the oroginal arrays

def merge(arr1, arr2)
new_array = arr1 + arr2
new_array.uniq

end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]