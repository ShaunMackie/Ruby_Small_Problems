# write a method that takes an array and rerves the elements in place;
# the return value should be the same array object

def reverse!(array)
  counter = 0
  other_counter = -1
iterations = array.length / 2

  iterations.times do 
  array[counter], array[other_counter] = array[other_counter], array[counter]
  counter += 1
  other_counter -= 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
puts reverse!(list) == ["abc"]
puts list == ["abc"]

list = []
puts reverse!(list) == []
puts list == []