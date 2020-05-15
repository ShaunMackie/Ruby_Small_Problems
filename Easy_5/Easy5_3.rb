MINUTES_PER_HOUR = 60
MULTIPLIER = 10
MINUTES_PER_DAY = 1440

def after_midnight(time)
  total_hours = time[0].to_i * MULTIPLIER + time[1].to_i
  total_minutes = time[-2].to_i * MULTIPLIER + time[-1].to_i
  total = total_hours * MINUTES_PER_HOUR + total_minutes

  total = 0 if total == MINUTES_PER_DAY
  total
end

#   if total == MINUTES_PER_DAY
#     return 0
#   else
#     total
#   end
# end

def before_midnight(time)
  total_hours = time[0].to_i * MULTIPLIER + time[1].to_i
  total_minutes = time[-2].to_i * MULTIPLIER + time[-1].to_i
  total = MINUTES_PER_DAY - (total_hours * MINUTES_PER_HOUR + total_minutes)

  total = 0 if total == MINUTES_PER_DAY
  total
end

# puts after_midnight('00:00') == 0
# puts before_midnight('00:00') == 0
# puts after_midnight('12:34') == 754
# puts before_midnight('12:34') == 686
# puts after_midnight('24:00') == 0
# puts before_midnight('24:00') == 0
