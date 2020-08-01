=begin

#Problem

- write a method that takes an Array and reverses its element in place
- we want to mutate the original array
- the return vale should be the same array object

#Input

- an array

#Output

- the same array object, but with the elements reversed

#Examples

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []

#Rules + Questions

- the array object that is passed into the method as an argument must be the same object that is returned4
- you can't ues reverse built in ruby methods

#Algorithm and Data Structure

ititialize two variables to be counters, 1 positve and 1 negative

- call the times method on the given array.size / 2
- array[0] == array -1
- add one to pos counter and -1 to neg counter
- return the array

=end

def reverse!(list)
  counter1 = 0
  counter2 = -1

  (list.size / 2).times do 
    list[counter1], list[counter2] = list[counter2], list[counter1]
    counter1 += 1
    counter2 -= 1
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []