=begin

#Problem

- write a method that takes two arguments - the first is the starting number and the 2nd is the ending number
- print out all numbers between the two numbers, including the given numbers
- if the num % 3 puts Fizz 5 puts Buzz 3 and 5 puts FizzBuzz

#Input

- two integers

#Output

- a combination of integers, commas, and strings
- if a number is evenly divisible by 3, replace the integer with the string Fizz, if 5 then Buzz, if 3 and 5 then FizzBuzz

#Examples

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

#Rules + Questions

- include the two given integers in the output
- how do we handle invalid inputs
- can there be quotation marks arodunt ehs trings in the result - we do this problem as if the answer is no

#Algorithm and Data Structure

init a local varialbe to store results, assign in an empty array
create a range fro the two given integers
iterate over the range using each
if num % 3 and 5 shovel FizzBuzz into the results
  if % 3 shove Fizz
    if % 5 shovel Buzz
    else shove the number
      join with commas and return the results

=end

def fizzbuzz(num1, num2)
  results = []

  (num1..num2).each do |number|
    if number % 3 == 0 && number % 5 == 0
      results << "FizzBuzz"
    elsif number % 3 == 0
      results << "Fizz"
    elsif number % 5 == 0
      results << "Buzz"
    else
      results << number
    end
  end
  puts results.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz