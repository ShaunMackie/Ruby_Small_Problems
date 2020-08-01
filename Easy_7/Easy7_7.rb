=begin

#Problem

- write a method that takes an array of integers as input
- multiplies all the numbers together
- dvides the result by the number of entries in the array
- and then prints the result rounded to 3 decimal places
- assume the array is not empty
- output the result using string interpolation

#Input

- an array of integers that is never empty

#Output

- using string interpolation, a string that includes the result of the math

#Examples

show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667

#Rules + Questions

= the array is never empty
- how do we handle if the array contains a zero or if the arrya has invalid inputs

#Algorithm and Data Structure

initialize a local variable and assing it a value of 1 to stor ethe value of the multiplying
- iterate over the array using each and multiply each integer by the value of the local variable 
- then add the result to the local variable
- then divide the value of result by the array.length and store that in a new variable
- then init another variable to store the formatted result
- use string interpolation to output th einfal string

=end

def show_multiplicative_average(array)
  result = 1

  array.each do |num|
    result *= num
  end
  division_result = result / array.length.to_f
  final_result = format("%.3f", division_result)
  p "The result is #{final_result}"
end

p show_multiplicative_average([3, 5]) == "The result is 7.500"

show_multiplicative_average([6])
#The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667