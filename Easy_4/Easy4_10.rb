# add the + or - sign to the result

NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_integer_to_string(integer)
  string = ''
  if integer < 0
    integer *= -1
    negative = true
  elsif integer > 0
    positive = true
  end

  loop do 
    integer, remainder = integer.divmod(10)
    string.prepend(NUMBERS[remainder])
    break if integer == 0
  end

  if negative
    string.prepend('-')
  elsif positive
    string.prepend('+')
  else
    string
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'