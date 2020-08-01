=begin

#Problem

- print all odd numbers from 1 to 99 inclusive
- all numbers should be printed on separate lines

#Input

- none in this case, or should we say a range of numbers 1..99?

#Output

- all odd numbers between and including 1..99 on separate lines

#Examples

1
3
..
99

#Rules
- each number should be printed on a separate line
- the first and last numbers in the range should be included

#Questions

#Data Structure

none needed here

#Algorithm

inititalize a local variable to store the range of numbers

using `for` I'll p a number if number odd from the range

=end

numbers = 1..99

for num in numbers
  p num if num.odd?
end
