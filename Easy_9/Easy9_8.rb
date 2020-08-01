=begin

#Problem

- create a method that takes two integers as arguments
- the first argument is a count
- the second is the first number of a sequence that your method will create
- the method should return an array that contains the same number of elements as the count arguement,
- while the values of each element will be multiples of the starting number
- you may assume that the count argument will aways have a value zero or greater (never negative), while the starting number
- can be any integer value
- if the count is 0, an empty list should be returned

#Input

- two integers - the first integer being the count, the 2nd being the starting number

#Output

- an array the length of the first number, containing X multiples of the 2nd number, where X is the first number

#Examples

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

#Rules + Questions

- the first number will always be zero or greater
- if the first number is zero, return an empty array
- multiply the 2nd number by 1, 2, 3, etc for the required length

#Algorithm and Data Structure

init a var for a counter with a value of 1
init a var to store results, assign to empty array
call the times method on the first arguement
multiply the 2nd number by the counter and shovel into the results array
add 1 to the counter
return the reesults


=end

def sequence(num1, num2)
  results = []
  counter = 1

  num1.times do
    results << num2 * counter
    counter += 1
  end
  results
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []