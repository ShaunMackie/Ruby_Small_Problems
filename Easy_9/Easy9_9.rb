=begin

#Problem

- write a method that determines the mean(average) of the three scores passed to it, and returns
- the letter value associated with that grade
- test values are all betewen 0 and 100
- there is no need to check for neg values or values greater than 100

#Input

three initegers

#Output

- an upcase char representing the grade that is found by averaging the three given integers

#Examples

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

#Rules + Questions

- all numbers will always be between 0 - 100

#Algorithm and Data Structure

init a var to store the average of the 3 numbers by adding them together and dividing by 3
use condintion to output greats

=end

def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3

  if average >= 90 
    p 'A'
  elsif average >= 60 && average <= 70
    p 'D'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"