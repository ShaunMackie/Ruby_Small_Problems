# write a method that takes a string of digits and returns the appropriate number as an integer.
# the string may have leaing + or - sign. If the first character is +, return a positive number
# if the first is -, return a negative number
# if no sign is given, return a positive number
# you cannot use any standard to_i etc methods

HASH = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "0" => 0}

def string_to_signed_integer(string)

  if string[0] == '+'
  new_string = string.delete('+')
  elsif string[0] == '-'
  new_string = string.delete('-')
  minus = true
  else
  new_string = string
  end

  number = 0

  digits = new_string.chars.map { |char| HASH[char]}
 
  digits.each do |digit|
  number = number * 10  + digit
  end
  if minus
    number = number * -1
  else
  number
  end
end



puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

