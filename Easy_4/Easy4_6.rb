# write a method that atkes an array of numbers, and reutnr and array with the smae number of elements
# each element has the running total from the original array

def running_total(array)
  result = []
  counter = 0
  total = 0

  loop do
    break if counter == array.size
    result << total += array[counter]
    counter += 1
  end
  
  result
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
