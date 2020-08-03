=begin

#Problem

- write a method that takes a string and returns a hash containing 3 entries:
- the percentage of characters in the string that are lowercase, the percentage of characters that are uppercase, and the percentage of characters that are neither

#Input

- a string

#Output

- a hash

#Examples

letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Rules + Questions

- if a character is a non-alphabetic character, it is considered 'neither'
- spaces count, and are considered neither

#Algorithm 

- create a hash with three keys: `lowercase`, `uppercase`, and `neither` - these are the results that will be returned
- determine what percentage of the given string's characters are uppercase, lowercase, and neither (research if implementation language has a shortcut - if not, the following will work)
  - iterate over every character in the string
  - determine which bucket the character belongs to and note it (non-alphabetical values are considered neither, the other two are not ambiguous)
  - calculate percentages
- assign the above-mentioned percentages to the corresponding keys as values

# Implementation Notes - first method

- initialize a 'total_chars' variable and assign it to the length of the string
- initialize a  `lowercase_percent` variable and assign it to the percentage of characters in the string that are lowercase
  - repeat the above for `uppercase` and `neither`

- initialize a `results` hash, with the keys as `lowercase`, `uppercase`, and 'neither' and the values as the corrisponding values from the variables we created above
- return the results hash

# Implementation Notes - second method

- initialize an `alphabet` variable and assign the alphabet to it
- initialize a `results` hash with three keys: `lowercase`, `uppercase`, and `neither'
- assign each key a value of zero
- iterate over the string
  - if a character is non-alphabetical, add 1 to 'neither'
  - if a character is lowercase, add 1 to the value of lowercase
  - repeat the last step for uppercase 

- reassign the value of each key to the current value of each key divided by the total number of characters in the given string 
  - initialize a total_chars variable and assign the length of the string
  - reassign each value to the current value / total_chars * 100
- return the hash

=end

def letter_percentages(string)
  total_chars = string.size.to_f

  lowercase_percent = string.count('a-z') / total_chars * 100
  uppercase_percent = string.count('A-Z') / total_chars * 100
  neither_percent = string.count('^A-Za-z') / total_chars * 100

  results = { lowercase: lowercase_percent,
              uppercase: uppercase_percent,
              neither: neither_percent }
end



def letter_percentages(string)
  alphabet = ('a'..'z').to_a
  results = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if !alphabet.include?(char.downcase)
      results[:neither] += 1
    elsif char == char.downcase
      results[:lowercase] += 1
    else 
      results[:uppercase] += 1
    end
  end

  total_chars = string.length.to_f

  results[:lowercase] = results[:lowercase] / total_chars * 100
  results[:uppercase] = results[:uppercase] / total_chars * 100
  results[:neither] = results[:neither] / total_chars * 100

  results
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }