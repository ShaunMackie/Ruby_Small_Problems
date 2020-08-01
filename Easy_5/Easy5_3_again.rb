=begin

#Problem

- write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midmight
- both methods should return a value in the range of 0..1439
- dont use date/time methods

#Input

- a string representing the time in minutes and hours

#Output

- an integer, representing the time before midnight
- an integer, representing the time after midnight

#Examples

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

#Rules + Questions

- write two methods, one counting before midnight and one counting after
- don't use date/time built in ruby methods
- both methods should return a number in the range of 0..1439

#Algorithm and Data Structure

for after midnight:
- convert the given string into an integer
  - delete the ':' sign
  - take the first two characters and convert to integer and multiply by 60
  - add the last two characters after converting to i to the total and return it
  multiply the hour by 60 and add the minutes
  - if number == 1440
  return 0

  for before midnight:

    same exact definition except we subtract the lsat part of the equation

=end

def after_midnight(string)
  string = string.delete(':')
  result = string[0..1].to_i * 60 + (string[2, 2].to_i)
  return 0 if result == 1440
  result
end

def before_midnight(string)
  string = string.delete(':')
  result = string[0..1].to_i * 60 - (string[2, 2].to_i)
  return 0 if result == 1440
  result
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0