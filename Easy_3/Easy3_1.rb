# write a program that solicit 6 numbers from the user, then prints a message
# that describes weather or not the 6th number appears among the first 5 numbers

result = []

puts "==> Enter the 1st number:"
result << num1 = gets.chomp.to_i

puts "==> Enter the 2nd number:"
result << num2 = gets.chomp.to_i

puts "==> Enter the 3rd number:"
result << num3 = gets.chomp.to_i

puts "==> Enter the 4th number:"
result << num4 = gets.chomp.to_i

puts "==> Enter the 5th number:"
result << num5 = gets.chomp.to_i

puts "==> Enter the 6th number:"
num6 = gets.chomp.to_i

if result.include?(num6)
  puts "The number #{num6} appears in #{result}."
else
  puts "The number #{num6} does not appear in #{result}." 
end