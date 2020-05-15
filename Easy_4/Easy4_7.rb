# write a method that takes a string of digits and returns the appropriate number as an integer
# do not us string.to_i


HASH = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "0" => 0}

def string_to_integer(string)
  number = 0

  digits = string.chars.map { |char| HASH[char]}
 
  digits.each do |digit|
  number = number * 10  + digit
  end
  number
end



puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

