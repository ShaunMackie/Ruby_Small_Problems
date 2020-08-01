=begin

#problem: write a method that takes an integer as an argument, and returns 'true' if the number's absolute value is odd

input: an integer
output: a boolean

example: 
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

rules: 

The integer argument can be positive, negative, or zero
the argument will always be a valid integer
zero returns false
you are not allowed to call the odd? or even? methods

questions:

- can the input be a float?


data structure: 

not sure what to put again, problem is too simple to require a data structure?


algorithm:

call the != method on the result of calling the modulus method on the integer and passing in 2 as an argument, 
and pass in zero as an argument (to the modulus method)


=end

def is_odd?(integer)
integer % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

