# write a method that calculates and returns the index of the first 
# fib number that has the number of digits specified

def find_fibonacci_index_by_length(integer)
  first_num = 1
  second_num = 1
  index = 2

  loop do 
    index += 1
    fib = first_num + second_num
    first_num = second_num
    second_num = fib
    break if fib.to_s.size >= integer
  end
  index
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# puts find_fibonacci_index_by_length(10) == 45
# puts find_fibonacci_index_by_length(100) == 476
# puts find_fibonacci_index_by_length(1000) == 4782
# puts find_fibonacci_index_by_length(10000) == 47847
