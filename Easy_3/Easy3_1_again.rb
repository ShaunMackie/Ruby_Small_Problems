=begin

#Problem
- write a program that solicits 6 numbers from the user 
- then prints a message that describes whether or not the 6th number appears among the first 5 numbers

#Input

- 6 integers

#Output

- a string saying whether the 6th integer appears among the first 5 integers

#Examples

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

#Rules

- the final output string must include the first 5 numbers stored in an array
- for this exercise, we will validate input to be non-zero positive numbers only - no floats

#Questions

- do we validate input?
- do we accept floats?
- do we accept 0?
- do we accept negative numbers?
- do we accept large 4+ digit numbers whree the user inputs a comma ie; 3,456

#Data Structure

- an array to store the inputs
- strings to ask for input and output the final string

#Algorithm

- write a mthod to validate the input as a non zero positive integer

***encase all this in a method
- initialize a local variable called results to store the results and asisgn it to an empty array
- initialize a loop
- ask for the first number
- using a conditional statement, if it's an intger, store the input in the results array and break out of the loop
- else tell the user their input is invalid and prompt again
-***encase all tis in a method

- repeat process for all 6 numbers
- check to see if the 6th integer exists among the first 5 integers instead of adding it to eresults array
- using a conditional, if it exists, tell the user
- else, tell the user it doesn't exist

=end

def integer?(integer)
  integer.to_s.to_i == integer && integer > 0
end

def get_numbers(position)
  num = ''

  loop do
    puts "==> Enter the #{position} number:"
    num = gets.chomp.to_i
      break if integer?(num)
      puts "==> Oops. That ain't valid. "
  end
  num
end

def final_statements(last_number, results)
  if results.include?(last_number)
    puts "The number #{last_number} appears in #{results}."
  else
    puts "The number #{last_number} does not appear in #{results}."
  end
end

results = []

results << get_numbers('1st')
results << get_numbers('2nd')
results << get_numbers('3rd')
results << get_numbers('4th')
results << get_numbers('5th')

last_number = get_numbers('6th')
final_statements(last_number, results)






