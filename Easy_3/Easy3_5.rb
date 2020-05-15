def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end


def power_of(num, squarenum)
  multiply(num, num) * num
  
end

p square(5)
p power_of(5, 3)