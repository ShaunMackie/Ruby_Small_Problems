puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = 2020

years_left = retirement_age - age

puts "It's 2020. You will retire in #{years_left + current_year}."
puts "You only have #{years_left} years of work to go!"
