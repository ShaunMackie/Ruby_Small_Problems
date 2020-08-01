def staggered_case(string)
string.downcase.chars.map.with_index do |char, index|
  if index.even?
    char.upcase 
  else
    char
  end
end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'