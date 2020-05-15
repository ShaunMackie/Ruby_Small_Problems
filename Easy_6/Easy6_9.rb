# write a method that takes an array and a search value as arguments.
# return true if the search value is in the array, otherwise false

def include?(array, integer)
  array.each do |element|
  return true if element == integer
  end

false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false