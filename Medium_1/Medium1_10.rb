=begin

In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

#Problem

write a method that returns the last digit in the nth fibonnacci number

#Input

a positive integer

#Output

the last digit in the nth fibonnaci number

#Examples

#Rules + Questions

#Algorithm and Data Structure

- first I want to write a method that outputs the fibonnaci sequence to the nth number, where nth is the given integer arguemnt

- initialize a variable results and assign it an arry with the inteers 1, 1
- initailize two variables, first and second, and assign each the value of 1

- initailize a loop
- initialize a variable called fib and assign the value of first + second
- shovel fib into the results array
- reassign first to second and second to fib
- break if the results array length is equal to or greater than the given integer arguement
- return the results array


- then I will write a method that takes the fibonnaci sequence, selects the lsat number, adn returns the last digit of that number
- call the first method and pass in the integer as an argument
- call last.to_s[-1].to_i on the return array value from calliung the method


=end

def find_fib(integer)
  results = [1, 1]
  first = 1
  second = 1
  
  loop do
    fib = first + second
    results << fib
    
    first = second
    second = fib
    break if results.length >= integer
  end
  results
end

def fibonacci_last(integer)
  find_fib(integer).last.to_s[-1].to_i
end


p fibonacci_last(15) == 0     # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20) == 5     # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100) == 5   # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001) == 1  # -> 1 (this is a 20899 digit number)
#p fibonacci_last(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) == 4