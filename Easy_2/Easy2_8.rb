action = ''
  
puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  action = gets.chomp
  break if action == 's' || action == 'p'
  puts "Invalid selection."
end

if action == 's'
  puts "The sum of the integers between 1 and #{integer} is #{(1..integer).reduce:+}."
else
  puts "The product of the integers between 1 and #{integer} is #{(1..integer).reduce:*}."
end