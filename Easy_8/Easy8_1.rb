# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# Examples:

#sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
#sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
#sum_of_sums([4]) == 4
#sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin

#Problem

write a method that atkes an array of numbers and returns the sum of the sums of each leading sequence for that array
- the arrayalways contains at least one number

#Input

- in array

#Output

- an integer - which is the sum of the sums of each leading sequence for that array

#Examples

#Rules

- add the first number to the (first + second number) to the (first + 2nd + 3rd) etc etc
- each array contains at leasdt 1 number
- I'm gonna assume the input is always valid

#Questions

- 

#Data Structure

- an array to store the preivous sums

#Algorithm

ititalize a local variable to keep trakc of the grand total
initialize a local variable to keep track of the current sum
inititlaize a coutner to keep track of the index point

intitalize a loop
add the first index value to the total sum, using array{counter]
add the value of total sum to the sum
add 1 to the counter
break if counter is array.length 
return sum



=end

def sum_of_sums(array)

sum = 0
total_sum = 0
counter = 0
  
loop do
  total_sum += array[counter]
  sum += total_sum
  counter += 1
  break if counter == array.length 
end
  sum
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
 psum_of_sums([1, 2, 3, 4, 5]) == 35
