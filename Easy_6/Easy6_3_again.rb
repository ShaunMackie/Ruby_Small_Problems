=begin

#Problem

- write a method that calculates and returns the index of the first Fibonacci number that has the number of digits
- specified as an argument
- the first Fib number has an index of 1
- the argument is always an intger with value 2 or greater

#Input

- an integer with value 2 or greater

#Output

- an integer, representing the index of the first number that has the length equal to the given arugment

#Examples

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

#Rules + Questions

- the given argument will always be 2 or greater
- the first Fib number has an index of 1, as opposed to the assumed zero
- how do we handle an invalid arguemtn, such as -1 or a string etc

#Algorithm and Data Structure

- init two variables to store the two wroking numbers and assign them each the value of 1
- initialiez an index and assign it a value of 2 because that is the index ofthe 2nd num we just init'd as a local variable
- call the loop method and pass in a do--end block
  - add 1 to the index
  - init a local variable call fib and add num1 + num2
  - break if fib.length = integer
  - num1 becomes num2 and num2 becomes fib
  - return the index


=end

def find_fibonacci_index_by_length(integer)
  num1 = 1
  num2 = 1
  index = 2

  loop do
    index += 1
    fib = num1 + num2
    break if fib.to_s.length == integer

    num1 = num2
    num2 = fib
  end
  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

