=begin

#Problem

- write a function that takes a string of digits and returns the appropriate number as an integer object, without using the to_i method

#Input

a string representing an integer

#Output

the integer ojbect version of the string

#Examples

string_to_integer('4321') == 4321
string_to_integer('570') == 570

#Rules + Questions

- you can't use the to_i method

#Algorithm and Data Structure

- convert each string repped digit into an integer
- we can't just add the integers together, we have to make them represent what htey are
- for example, in 570, we need to turn the 5 into 500 and the 7 into 70
- in 4321, we need to turn the 4 into 4000, the 3 into 300 etc
- we can keep a running total, so we can turn the 4 into 4000, then store that somewhere, then turn the 3 into 300 and add it to the 4000, so then we'd have 4300, then turn the 2 into 20 and add it and the 1 is a single digit so it doesn't have to be convertd, then add it then we'd have 4321

- init a global variable and assign it an array from 0 to 9
- init a var to store the running total and will return this at the end
init a counter to use at least for the index refence, hopefully can use for factoring as well? assign a value of zero

- init a loop
- call the index method on the NUMBERS array and pass in string[counter] as an argument
- joined here
- multiply this result by the result of 10 ** (string.length - counter + 1)
- add this result to th running total
add 1 to the counter
- break the loop if counter > == string length? (this might not work)
- return the results

=end

NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

def string_to_integer(string)
  results = 0
  counter = 0
  
  loop do
    results += NUMBERS.index(string[counter]) * 10 ** (string.length - (counter + 1))
    counter += 1
    break if counter >= string.length
  end
  results
end



p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

def string_to_integer(string)
  results = 0
  reversed_string = string.reverse.chars
  
  reversed_string.each.with_index do |char, idx|
    results += NUMBERS.index(char) * 10 ** idx
  end
  results
end

NUMBERS = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7 }

def string_to_integer(string)
  results = 0
  counter = string.length - 1
  
  string.chars.each.with_index do |char, idx|
    results += NUMBERS[char] * 10 ** counter
    counter -= 1
  end
  results
end