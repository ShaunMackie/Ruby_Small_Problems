def halvsies(array)
new_array = []

  if array.length.even?
  p number = array.length / 2
  new_array << array.shift(number)
  new_array << array
else
  number = (array.length + 1) / 2
  new_array << array.shift(number)
  new_array << array
 end
p new_array
end

 p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
 p halvsies([]) == [[], []]
 p halvsies([5]) == [[5], []]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]