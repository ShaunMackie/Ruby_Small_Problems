def interleave(arr1, arr2)
  new_array = []
  arr1.length.times do
    new_array << arr1.shift
    new_array << arr2.shift
  end
  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

