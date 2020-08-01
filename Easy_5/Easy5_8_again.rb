=begin

#Problem

- write a method that takes an array of integers between 0 and 19 and returns an array of those integers 
- sorted based on the english word for each number

#Input

- an array of integers

#Output

- an array of integers, sorted based on the english word for each number

#Examples

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

#Rules + Questions

- sort the given array based on the word for each number

#Algorithm and Data Structure

create an array of words to match each word from zero to 19
create a variable to store the hash
create anotehr variable to store the retuls
carete a third variable to store the final reulst
using each with index, store the resulst in the new hash where the word is the key and the matching index is the value
create an array of just the keys and sort it alphabetically
iterate over the sorted array of keys, and shovel the resulting value into a new array and return it

=end

NUMBERS = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)

def alphabetic_number_sort(array)
  hash = {}
  final_results = []

  array.each.with_index do |num, index|
    hash[NUMBERS[num]] = num
  end
  results = hash.keys.sort
  results.each do |key|
    final_results << hash[key]
  end
  final_results
end

alphabetic_number_sort([5, 6, 8, 9])

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
