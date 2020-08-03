=begin

#Problem

Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. 
To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Note that balanced pairs must each start with a (, not a ).

#Input

- a string

#Output

- a boolean

#Examples

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

# Rules + Questions

- a pair is considered balanced if there are an equal number of opening and closing parenthesis
- a pair must start with an opening parenthesis '(' to be considered balanced

#Algorithm 

- determine whether all parenthesis in the given string are properly balanced (parenthesis occur in matching '(' and ')' pairs and must start with a '(')
  - count the number of parenthesis in the given string
  - if the number of parenthesis is odd, return false
  - if the number is even, determine if there is an equal number of opening and closing parenthesis
  - if there are an equal number of opening and closing parenthesis make sure that they are balanced according to the rules
- return a boolean - true if the parenthesis are balanced; false if they are not balanced. 

# Implementation Notes - first method

- return false if the number of parenthesis are odd
- return false if the first parenthesis in the string is a closing parentheis - ')'
- return false if the last parenthesis in the string is an opening parenthesis - '('
- return true if none of the above conditions are met

# Implementation Notes - second method

- initialize an `openers` variable and assign a value of zero
- initialize a `closer` variable and assign a value of zero
- iterate over the given string
- increment opener by 1 for each opening parenthesis
- increment closer by 1 for each opening parenthes
- return false if the value of closer is greater than the value of opener
- return false if opener is not equal to closer
- return true


=end

def balanced?(string)
  return false if string.count('(' ')').odd?
  return false if string.delete('^()')[0] == ')' || string.delete('^()')[-1] == '('
 
  true
end

def balanced?(string)
  opener = 0
  closer = 0

  string.chars.each do |char|
    opener += 1 if char == '('
    closer += 1 if char == ')'
    return false if closer > opener
  end

  return false if closer != opener
  true
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false