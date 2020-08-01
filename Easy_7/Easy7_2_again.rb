=begin

#Problem

- write a method that takes a string and then returns a hash that contains 3 entries:
- one represents the number of characters in the string that are lower case
- one represents the number of characters that are uppercase
- and one that represents the number of characters that are neither

#Input

a string consisting of lower case uppercase letters and well as spaces and other things like punctuation marks

#Output

a hash, with three keys, one is how many lowercase leters there are, one for uppcercase letters, and one for neither

#Examples

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

#Rules + Questions

- does a space count as a neither or is it ignored?
- spaces are included in the neither category
- can we mutate the original string ojbect? we will assume we can but if we couldn't we'd just initialize a local variable and assign the string
to it and then just mutate that - so there bitch

#Algorithm and Data Structure

initialize a local variable and point it to a hash that has the 3 given keys, with values of zero to start
initialize a range containing the alphabet lowercase and one for uppercase and store them both in their own variables

convert the given string to an array of chars
call each on the array
use a conditional statement
if lower case alphabet contain char
  lowercase += 1
  same for uppercase
else neither += 1
  return the hash

=end

def letter_case_count(string)
  results = { "lowercase": 0, "uppercase": 0, "neither": 0 }
  lower_case_alphabet = *('a'..'z')
  upper_case_alphabet = *('A'..'Z')

    string.chars.each do |char|
      if lower_case_alphabet.include?(char)
        results[:'lowercase'] += 1
      elsif upper_case_alphabet.include?(char)
        results[:'uppercase'] += 1
      else
        results[:'neither'] += 1
      end
    end

    results
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
S