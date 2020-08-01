=begin

#Problem

- write a method that takes an array of numbers
- and returns the sum of the sums of each leading sequence for that array
- you may assume that the array always contains at least one number

#Input

- an array of numbers

#Output

- an integers which is the sum of the sums of each leading sequence for that array

#Examples

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

#Rules + Questions

- the array will always contain one number
- the return value is the sum of the sums of each leading sequence for that array

#Algorithm and Data Structure
init a var to store results and assign a value of zero
init a var to be a counter and assign a value of 1
call the times method on the legnth of the intger
add the reult of calling sum on the array[0, counter]
add 1 to the counter
return the reestuls

=end

def sum_of_sums(array)
  results = 0
  counter = 1

  (array.length).times do 
    results += array[0, counter].sum
    counter += 1
  end
  results
end

p sum_of_sums([3, 5, 2]) ==  21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35