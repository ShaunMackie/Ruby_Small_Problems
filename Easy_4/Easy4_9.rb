# write a method that takes a positive integer or zero and converts it to a string

NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  string = ''
  number = integer
  loop do 
    number, remainder = number.divmod(10)
    string.prepend(NUMBERS[remainder])
    break if number == 0
  end
  string
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'