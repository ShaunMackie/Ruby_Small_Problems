=begin

#Problem

- write a method that takes any year greater than 0 as input
- and returns true if the year is a leap year, false if it's not a leap year

#Input

- an integer greater than 0

#Output

- a boolean, true if the year is a leapyear, else false

#Examples

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

#Rules + Questions

- how do we handle an invalid input?

- leap years occur every year that is evenly divisible by 4, unless the year is also
divisible by 100. 
- if the year is evenly divisible by 100, then it's not a leap year unless it's evenly divisible by 400
- so if it's divisible by 400, it's a leap year
- elsif it's divisible by 100, it's NOT a leap year
- else if it's divisible by 4 it's a leap year

#Algorithm and Data Structure

using a conditional statement, if the integer is evenly divisible by 400, return true
- else if it's divisible by 100, return false
- else if it's divisible by 4 return true
else return false

=end

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else 
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true