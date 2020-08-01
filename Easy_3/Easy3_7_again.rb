=begin

#Problem

- write a method that returns an array that contains every other element of an array that is passed in as an argument
- the values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the arguemnt array

#Input

- an array of ojbects - could be integers or stirngs or empty etc

#Output

- an array containing only every 2nd element from the given array, starting at index 0

#Examples

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

#Rules

- return an array only including the values in the even spots, index wise

#Questions

#Data Structure

an array

#Algorithm

- initialize alocal variable to store the resutls

- iterate over the given array using each with index
- if an elemen't index is even, shovel it into the results array
- when finished return the reesults array
=end

def oddities(array)
  results = []

array.each_with_index do |element, index|
  if index.even?
  results << element
  end
end
results
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []


# def oddities(array)
#   array.select.with_index do |ele, idx|
#     idx.even?
#   end
#   end

#**couldn't figure out select with index, that was my initial go-to way to solve this, never did find select.with_index in the documentation