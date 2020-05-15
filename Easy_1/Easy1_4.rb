def count_occurrences(vehicles)
  result = {}
  counter = 0

  loop do
    if result.has_key?(vehicles[counter])
      result[vehicles[counter]] += 1
    else
      result[vehicles[counter]] = 1
    end
    counter += 1
    break if counter == vehicles.length
  end
p result
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)