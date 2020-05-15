def stringy(integer)
  result = ''
  counter = 0

  loop do
    break if counter == integer
    if counter.even?
      result << '1'
    else
      counter.odd?
      result << '0'
    end
    counter += 1
  end
  result
end
      

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'