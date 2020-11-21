=begin

  #Problem

  - write a method that computes the difference between the square of the sum of the first n positive integers
  - and the sum of the squares of the first n positive integers
  
  #Input

  - a positive integer
  
  #Output

  - a positive integer or zero
  
  #Examples
  
  # Rules + Questions


  
  #Algorithm 
  - calculate the square of the sum of the first x positive integers
  - calculate the sum of the squares of the first x postive integers
  - substract the first from the second and return the result
  
  # Implementation Notes 
  - calc the square of the sum of the first x positive integers
    - initialize a results variable and assign a value of zero
    - iterate over a range of 1 to the given argument
    - add each number to the results variable
    - square the results variable and return it
  
  - calc the sum of the squares of hte first x positive integers
    - initialize a results variable and assign a value of zero
    - iterate over a range of 1 to the given argument
    - square each number and add the result to results
    - return results

  - subtract the first def from the 2nd def
=end


def square_of_sum(integer)
  results = 0

  (1..integer).each do |num|
    results += num
  end

results ** 2
end

def sum_of_square(integer)
  results = 0

  (1..integer).each do |num|
    results += num ** 2
  end
  results
end

def sum_square_difference(integer)
  square_of_sum(integer) - sum_of_square(integer)
end


 p sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150