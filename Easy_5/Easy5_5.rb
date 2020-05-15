# given a string that consists of some words(all lowercased) and an assortment
# of non-alphabetic characters, write a method that returns that string
# with all of the non-alphabetic characters replaced by spaces.
# if one or more non-alphabetic characters occur in a row, you should only have
# one space in the result. (results never have consecutive spaces)

def cleanup(string)
  answer = ''

  string.chars.each do |char|
    if ('a'..'z').include?(char)
      answer << char
    else
      answer << ' ' unless answer[-1] == ' '
    end
  end
  answer
end

puts cleanup("---what's my +*& line?") == ' what s my line '
