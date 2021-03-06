#write a method that takes two strings as arguments, determines the longest of the two
#then returns the result of concatenating the shorter string, the longer string, then the shorter string again
# strings are always different lengths

def short_long_short(string1, string2)
  if string1.length > string2.length
  "#{string2}#{string1}#{string2}"
  else
  "#{string1}#{string2}#{string1}"
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"