
=begin

Write a NON-recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

#Problem

- write a method that computes the nth Fibonacci number, where nth is the given integer argument
- do not use recursion

#Input

- an integer

#Output

- an integer

#Examples

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

# Rules + Questions

- do not use recursion
- output the nth number in the Fibonnaci sequence, where nth is the given integer argument
- this is NOT the index of the Fibonnaci sequence; you have to count the numbers
- for example, if the given argument is 2, then return the 2nd number in the sequence (if it was index, it would be the 3rd number)

#Algorithm 

- create a `fibonacci_numbers` array to contain the required numbers from the Fibonnaci sequence
- populate the `fibonacci_numbers` array with n values computed using the fibonnaci sequence formula 
- return the last element in the `fibonacci_numbers` array

# Implementation Notes - first method

- initialize a `fibonacci_numbers` variable and assign it to an array containing the integers 1 and 1
- initialize a loop
- reassign the first element in the `fibonacci_numbers` array to the second element in the array, at the same time; 
    reassign the second element in the array to the sum of the first and the second element in the array
- return the last element in the `fibonnaci_numbers` array


# Implementation Notes - second method

- initialize a `fibonacci_numbers` variable and assign it to an array containing the integers 1 and 1 
- initialize a `first` variable and assign it the integer 1
- initialize a `second` variable and assign it the integer 1
- initialize a loop
- initialize a `fib` variable and assign the value of `first` + `second`
- add the value of `fib` to the `fibonacci_numbers` array
- break out of the loop if the length of the `fibonacci_numbers` array is equal to the given integer argument
- reassign `first` to `second`
- reassign `second` to `fib`
- return the last element in the `fibonacci_numbers` array


=end


def fibonacci(integer)
  fibonnaci_numbers = [1, 1]

  (integer - 2).times do
    fibonnaci_numbers = [fibonnaci_numbers[-1], fibonnaci_numbers.inject(:+)]
  end
  fibonnaci_numbers[-1]
end

def fibonacci(integer)
  fibonnaci_numbers = [1, 1]
  first = fibonnaci_numbers[0]
  second = fibonnaci_numbers[1]

  loop do
    fib = first + second
    fibonnaci_numbers << fib
    break if fibonnaci_numbers.length == integer

    first = second
    second = fib
  end
  fibonnaci_numbers[-1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
#fibonacci(100_001)  #== 4202692702.....8285979669707537501