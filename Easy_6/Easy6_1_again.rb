=begin

#Problem

- write a method that takes a floating point number that represents an angle between 0 and 360 degrees
- and returns a string tha represents that angle in degrees, minutes and seconds.
- you should use the degree symbol to represent degrees, a single quote to represent minutes, and a double quote
- to represent seconds
- a degree has 60 sminutes while a minute has 60 seconds
- our results may differ slightly depending on how we round values, 
- but should be wihtin a seocnd or two of the results shown. 
- you should use two digit numbers with leading zeros
- when formatting the minutes and seconds e.g., 321*03'07"
- we can use this constand to represent the degree symbol


#Input

- a floating point number that represents an angle betewen 0 and 360 degrees

#Output

- a string, formatted with leading zeros, must be 1-3 digts + 2 digits + 2 digits
- a dgree symbole to rep degrees, single quote for minutes, double quote for seonceds

#Examples

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

#Rules + Questions

- the whole part of the given float is the degrees
- the fractional part represents minutes and seconds
- you times the fractional part by 60 to get minutes
- and you times the remainder of that by 60 to get the seconds
- you can round as you see fit
- you can use the given constant to represent the degree symbol

#Algorithm and Data Structure
use the given constant
initailize a variable for multiplier that is set to 60
initaiilize a variable to store the degrees, and then convert the given number to an integer to have the degrees
- initailiez a variable for the minutes, subtract the given float from the degrees.to_f to have the number
- then multiply that number by 60
- initialize a variable to store the seconds and multiply the reminder from the minuetes by 60 to get the seconds

- using this format, insert the variables and the punctuation to output it: format("%.2f", 3.14159) => 3.14

=end

DEGREE = "\xC2\xB0"
MULTIPLIER = 60

def dms(float)
  degrees = float.to_i
  minutes = MULTIPLIER * (float - degrees.to_f)
  seconds = MULTIPLIER * (minutes - minutes.to_i)

p format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(93.034773) == %(93°02'05")
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")