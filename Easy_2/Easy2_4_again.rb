=begin

#Problem
- build a program that displays when the user will retire and how many years they have left to work until retirement

#Input
- two integers - of for the users age and one for the users age they'd like to retire at

#Output

- two strings, containing what year they will retire and how many more years they need to work

#Examples

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

#Rules

- the input will be a valid integer
- the age they want to retire will be greater than the age that they are

#Questions 
- how do we handle an invalid input(non-integer)
- can we accept floats, ie 30.5 years old?
- how do we handle if their desired retirement age is less than their curent age?

#Data Structure

- multiple strings

#Algorithm

ask for the users age and store it in a variable and convert it to an integer
repeat the above, asking what age they'd like to retire
initialize a variable and point it to calculated result of how many years they have left to work
init another variable to store their retirement age; add years left to work to current year
create a string and use interpolation to display the required sentences with the results

=end

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_until_retirement = retirement_age - current_age
retirement_year = Time.now.year + years_until_retirement

puts "It's #{Time.now.year}. You will retire in #{retirement_year}."
puts "You have only #{years_until_retirement} years of work to go!"
