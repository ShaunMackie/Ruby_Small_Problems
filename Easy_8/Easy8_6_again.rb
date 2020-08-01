=begin

#Problem

write a method that takes two arguements
- the first is the starting number seoncd is the ending number
- print out all the number between the two numbers
- if a num is divisible by 3 priunt Fizz
- if 5 print Buzz
if 3 and 5 print FizzBuzz

#Input

- two integers

#Output

- a list of integers with Fizz Buzz and FizzBuzz inserted where applicable

#Examples

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

#Rules + Questions

- how do we handle an invalid inpout?
  - if a num % 3 == 0 put Fizz
  - same for 5 put Buzz
  - 3 and 5 put FizzBuzz
  - the output should have commas between each element

#Algorithm and Data Structure
- init a var to store the results and assign an empty array
- create a range from the two given numbers
- iterate over the range using each
- using a conditional statement
- if a number is 3 and 5 shovel fizzbuzz into results
- if 3 shovel fizz
if 5 shovel buzz
  - else shovel number
  return and join the results array using commas

=end

def fizzbuzz(num1, num2)

  results = []

  (num1..num2).each do |num|
    if num % 3 == 0 && num % 5 === 0
      results << "FizzBuzz"
    elsif num % 3 == 0
      results << "Fizz"
    elsif num % 5 == 0
      results << "Buzz"
    else
      results << num
    end
  end
  puts results.join(", ")
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz