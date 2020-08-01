=begin

#Problem

- write a method that takes a grocery list(array) of fruits with quantities and converts it into an array of the correct number
- of each fruit

#Input

- a nested array of strings + an integer

#Output

- an array of strings, with each string output integer amount of times

#Examples

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]


#Rules + Questions

- how do we handle invalid input, like string witih no integer or vice versa

#Algorithm and Data Structure
init a reults arrayS
iterate over the array of arrays using each
call the times method on array [1] and shovel in array [0] to the rseults

=end

def buy_fruit(array)
  results = []

  array.each do |array|
    array[1].times do 
      results << array[0]
    end
  end
  results
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
