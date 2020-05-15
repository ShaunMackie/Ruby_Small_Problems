# write a method that takes any year greater than 0 and reutnr true if the year is a leap year, else false
# a leap year occurs when a year is divisible by 4, unless that year is divisible by 100, then it needs to be 400

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 100 == 0 && year % 400 == 0
    return true
  else
    return false
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true

#second attempt below 

#write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, false if it isn't
# a leap year is any year divisible by 4, unless that year is also divisible by 100.
# if the year is divisible by 100, then it is not a leap year unless it is divisible by 400

# - check if year is divisible by 400, then it's a leap year'
# - if not by 400, then it's a leap ' year if divisible by 4 and not by 100


def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 4 == 0 && year % 100 != 0
    true
  else
    false
  end
end

def leap_year?(year)
  year % 400 == 0 || year % 4 == 0 && year % 100 != 0
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true