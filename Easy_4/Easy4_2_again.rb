=begin

#Problem

- write a method that takes a year as input and returns the century. 
- the return value should be a string that begins with the century number,
- and ends with the right st, nd, rd, or th for that number
- new centuries begin in yuears that end with 01
- so the years 1901-2000 comprimise the 20th century

#Input

an integer, representing a year

#Output

- the century, in string format, with the appropriately suffix

#Examples

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

#Rules + Questions

- how do we handle an invalid input?
  - new centuries begin in years that end in 01. so 1901 - 2000 is the 20th century. 2001-2100 is the 21st century etc
  - the output is a string

#Algorithm and Data Structure

define a method to return the century in string format
- if interger.length < 3
return 1st century
elsif intger % 10 != 0
  return integer / 100 + 1
else
  return integer / 100

  ***

- if the (century - 10) < 10
century + 'th'
- if the century ends in 1, st
- if the century ends in 2, nd
- if the cnetury ends in 3, rd
- else th
- i want to use indexing to determine the last digit, so I will convert to str earlier

=end

def century_finder(year)
  if year.to_s.length < 3
    return 1
  elsif year % 10 != 0
    return (year / 100 + 1)
  else
    return (year/100)
  end
end

def century(year)
  year = century_finder(year).to_s
  
  if year[-2] == '1' && year[-1].to_i < 4 
    year + 'th'
  elsif year[-1] == '1'
    year + 'st'
  elsif year[-1] == '2'
    year + 'nd'
  elsif year[-1] == '3'
    year + 'rd'
  else
    year + 'th'
  end
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'