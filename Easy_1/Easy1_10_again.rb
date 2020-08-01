=begin

#Problem

- write a method that takes two arguments, a positive integer and a boolean
- and calculates the bonus for a given salary
- if the boolean is true, the bonus is half the salary
- if the boolean is false, the bonus is 0

#Input
- a positive interger and a boolean

#Output

- an integer represneting the bonus amount

#Examples

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


#Rules

- the result must return a psoitive interger, if the boolean is true
- if the boolean is false, zero is always returned

#Data Structure

for now no data strucutre is needed

#Algorithm

- if boolean is false, return 0
- if boolean is true, divide the given integer by 2

=end

def calculate_bonus(integer, boolean)
  return 0 if boolean == false
  integer/2
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000