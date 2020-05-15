# write a method that takes an array of integers between 0 and 19
# and returns an array of those integers sorted based on the English
# word for each number

NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

def alphabetic_number_sort(array)
  hash = {}
  final_result = []

  array.each do |num|
    hash[NUMBERS[num]] = num
  end

  NUMBERS.sort.each do |string|
    final_result << hash[string]
  end

  final_result
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
