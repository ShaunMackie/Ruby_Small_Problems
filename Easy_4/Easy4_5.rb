def multisum(number)
  array = []
  num1 = 3
  num2 = 5

  loop do
  if num1 <= number
    array << num1
    num1 += 3
    break if num1 > number
  end
end

  loop do
    if num2 <= number 
      array << num2
      num2 += 5
    end 
    break if num2 > number
  end

  array.uniq!
  counter = 0
  sum = 0

  loop do
  sum += array[counter]
  counter += 1
  break if counter == array.length
  end
return sum
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168