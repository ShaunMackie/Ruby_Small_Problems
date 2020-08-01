def letter_case_count(string)
  occurances = {lowercase: 0, uppercase: 0, neither: 0}
  alphabet = ("a".."z").to_a
  caps = ("A".."Z").to_a

  string.chars.each do |char|
    if char == char.upcase && (caps).include?(char)
      occurances[:uppercase] += 1
    elsif
      char == char.downcase && (alphabet).include?(char)
      occurances[:lowercase] += 1
    else
      occurances[:neither] += 1
    end
  end
    p occurances
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
