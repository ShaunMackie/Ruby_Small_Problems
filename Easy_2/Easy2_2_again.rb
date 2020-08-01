=begin

#Problem

- build a program that asks the user for the length and width of a room in meters 
- and then displays the area of the room in both square meters and square feet

#Input

- two digits - one for legnth nad one for width

#Output

- a string that includes the two given input integers multiplied together,
- stating the area of the room

#Examples

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

#Rules

1 square meter == 10.7639 square feet
- we don't need to validate the input
- square meters is calculated by multiplying the length and the width in meters together
- round square meters to 1 decimal place and include the zero if applicable
- round square feet to 2 decimal places

#Data Structure

a series of strings

#Algorithm

- ask the user for the length of the roonm
- store result in a varialbe and convert that variable from a stringt to a float
- ask for width
- store te result and convert
output a string explaining the result, using contantentation for the square meeters and square feet


=end

puts "Enter the length of the room in meters: "
length = gets.chomp.to_f

puts "Enter the width of the room in meters: "
width = gets.chomp.to_f

puts "The area of the room is #{(length * width).round(1)} square meters (#{(length * width * 10.7639).round(2)} square feet)."
