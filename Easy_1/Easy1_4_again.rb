=begin

#Problem
write a method that counts the number of occurrences of each element in a given array.
the words in the array are case-sensitive. 
Once counted, print each element alongside the number of occurences

#Input
an array

#Output
various element types: the element as a string, a rocket symbol, followed by an integer representing the number of found occurences

#Examples
given input: vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

expected output: car => 4
truck => 3
SUV => 1
motorcycle => 2

#Rules
the words in the array are case sensitive, so 'suv' != 'SUV'
the output is a unique format - a combination of a string + a hash rocket(string) + an integer

#Data Structure
a hash to store the final data
string interpolation to output the result

#Algorithm
first method:
inititialize an empty hash to store the results
iterate over the array using `each`
use a conditional statement:
if the current element is a hash key, add 1 to the value
else if the current element is not a hash key, create a new key with a value of integer object 1
return the hash.
end of first method

second method:
iterate over the hash using `each`
using string interpolation, output(print) each key + a hash rocket + the value
end

=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def vehicles_hash(array)
  result = {}

  array.each do |ele|
    if result.has_key?(ele)
      result[ele] += 1
    else
      result[ele] = 1
    end
  end
  result
end

def count_occurences(hash)
  hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurences(vehicles_hash(vehicles))
