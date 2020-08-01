=begin

#Problem

- write a method that takes an arary of integers, multiplies all numbers together,
- divides the result by the number of entries in the array
- and then prints the result rounded to 3 decimal places
- assume the array is non empty

#Input

#Output

#Examples

show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667

#Rules + Questions

- assume the array is non empty
- what if it's non empty but doesn't contain all integers
- round the return value to 3 decimal places
- multiply all numbers together and divide by how many numbers are in the array and round to 3 decimal places

#Algorithm and Data Structure

init a var to store results and assign a value of 1
iterate over the array using each
result *= each integer
divide the results by the value of calling length on the given array argument and store this in a new avriable as a float

format the return value to have 3 decimal place in the setence after using string interloplation to formulate the final number

=end

def show_multiplicative_average(array)
  results = 1.to_f
 
  array.each do |num|
    results *= num
  end
  
  final_results = results / array.length
  p "The result is #{format("%.3f", final_results)}."
end

show_multiplicative_average([3, 5])
#The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667