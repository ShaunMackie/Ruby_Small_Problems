def century(year)
  if year % 100 != 0
    century = year / 100 + 1
  else
    century = year / 100
  end

  case century[-1]
  when '1'
    century.to_s + 'st'
  when '2'
    century.to_s + 'nd'
  when '3'
    century.to_s 'rd'
  else
    century.to_s + 'th'
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
# puts century(1965) == '20th'
# puts century(256) == '3rd'
# puts century(5) == '1st'
# puts century(10103) == '102nd'
# puts century(1052) == '11th'
# puts century(1127) == '12th'
# puts century(11201) == '113th'