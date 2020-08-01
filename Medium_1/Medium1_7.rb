CONSTANT = {'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5 }


def word_to_digit(string)
  
  string.split.map do |word|
    if CONSTANT.include?(word)
     CONSTANT[word]
    elsif word[-1] == '.' && CONSTANT.include?(word[0..-2])
     CONSTANT[word[0..-2]].to_s + '.'
    else
     word
    end
  end.join(' ')
end