=begin

#Problem

- write a method that takes an array of integers between 0 and 19 and returns an array of those integers sorted based on the english word for each number
- zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

#Input

- an array of integers between 0 an 19

#Output

the array sorted based on the English spelling of each integer

#Examples

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

alphabetic_number_sort([0, 4, 8, 12, 16]) == [8, 4, 16, 12, 0]
alphabetic_number_sort([3, 5, 7, 9, 11, 13]) == [11, 5, 9, 7, 13, 3]

#Rules + Questions

- return the array sorted by the english language spelling of each integer
- the given arguments will be between 0 and 19

#Algorithm and Data Structure

- take the tiniest steps you can then run your code
- pretend you’re writing your algo to pass to Chris to code in a different language
- your suedo code is ruby specific

- my goal is to sort the array not from 0 to 19 but based on the spelling of each word
- so I need a way to access the spelling of each word - two options are a hash and an array - let's do both
- we want to iterate over the object that contains the english versions of the integers
- we want to basically access the words with the numbers using index, create an array with the words, sort the words alphabetically, then output the indexes of the sorted words in the order that they appear

- let's say we have an array of the english words in indexed order
- I'm a bit stuck here - I know we need to attach/reference the array of words with their index
- could we create the array of words, then add each integer to the word in a nested array, sort the nested arrays then output the integers we added
we wooiuld have to manually turn the given array into an array of nested arrays
create the array of words
iterate over the given array, using index referencing 

- create an array of the words
- initialize a vriable and assign it to an empty array
- iterate over the words array
- shovel each element into the new variable array so we have an array of nested arrays
- iterate over the given array of integers
- shovel each integer into the sub array that matches the index
- sort this array
- init a new array to store the final variable
- use index referencing to shovel the integer into a new array and return it
I think I can append the first each block and add a conditional
- shovel it in if the given array contains the index of the word I'm shoveling
amend my first each interation to be each with index so I can reference the index numers
- need to amend our second each to only shovel in if 
- need to modifay the second each to also include index, cant use the num for index if it's not sequential
- 

=end

def alphabetic_number_sort(array)
  words_array = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  
  fantastic = []
  final_array = []
  
  words_array.each.with_index do |word, index|
    fantastic << word.split if array.include?(index)
  end
  
  array.each.with_index do |num, index|
    fantastic[index] << num
  end
  
  fantastic.sort.select do |sub_array|
    final_array << sub_array[1]
  end
  final_array
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
   6, 16, 10, 13, 3, 12, 2, 0
]

p alphabetic_number_sort([0, 4, 8, 12, 16]) == [8, 4, 16, 12, 0]
p alphabetic_number_sort([3, 5, 7, 9, 11, 13]) == [11, 5, 9, 7, 13, 3]