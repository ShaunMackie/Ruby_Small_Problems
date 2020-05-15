# write a method that takes a floating point number that represents an angle
# between 0 and 360 and returns a string that represents that angle in degrees,
# minutes, and seconds. 

def dms(integer)
  degrees = integer.to_i
  minutes = (integer - integer.to_i) * 60
  seconds = (minutes - minutes.to_i) * 60

p format("%d\xC2\xB0%02d'%02d\"", degrees, minutes.to_i, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")