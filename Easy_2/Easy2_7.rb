# number = (1..99)

# for num in number
#   puts num if num.odd?
# end

number = (1..99)

number.select {|num| puts num if num % 2 == 0 }