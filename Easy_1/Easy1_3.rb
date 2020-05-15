def digit_list(integer)
  integer.digits.reverse
end


# def digit_list(integer)
#   result = []

#   integer.to_s.chars.map do |char|
#     result << char.to_i
#   end
#   result
# end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4] 

