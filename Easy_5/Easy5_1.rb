def ascii_value(string)
  total = 0
  string.chars.each do |char|
    total += char.ord
  end
  total
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0