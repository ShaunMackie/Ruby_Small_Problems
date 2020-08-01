=begin

#Problem

- update the method fro the previous exercise to determine leap years both befreo and after 1752
- prior to 1752, leap years are any years that are divisible by 4

#Input

an integer greater than 0

#Output

a boolean, if it's a leap year true, else false

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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

#Rules + Questions

- ANY year divisible by 4 is a leap year before 1752, else it' slike the first exercise

#Algorithm and Data Structure

- add this branch to the current conditional: if the year is <= 1752 && year is diviisble by 4, return true

=end

def leap_year?(year)
  if year <= 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else year % 4 == 0
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true