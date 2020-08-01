=begin

#Problem

- write a methd named xor that takes two arguments
- and returns true if exactly one of the arguments is truthy, else it returns false

#Input

- two times it takes an integer that has the odd? or even? method called on it

#Output

- a boolean; true if only 1 argument is true, else false

#Examples

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

#Rules

- if one of the two arguments is false, return true
- else return false if both are true or both are false

#Questions

#Data Structure

#Algorithm

using a conditional statement,
- if the first argument is true and the 2nd is false or the first is false and the seocnd is true, return true
- else return false

=end

def xor?(arg1, arg2)
  if arg1 == true && arg2 == false || arg1 == false && arg2 == true
    return true
  else
    return false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == falseS