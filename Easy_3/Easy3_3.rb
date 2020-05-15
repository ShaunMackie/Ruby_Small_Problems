puts "==> Please write word or multiple words:"
input = gets.chomp
new_input = input.chars
new_input.delete(' ')
new_input.count

puts "There are #{new_input.count} characters in '#{input}'."