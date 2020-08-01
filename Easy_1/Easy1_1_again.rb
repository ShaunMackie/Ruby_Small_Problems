=begin

#problem: write a method that takes two arguments, a string and a positive integer
and prints out the string as many times as the integer indicates

input: 1 string and 1 integer
output: a string 

example: repeat('Hello', 3)
outputs: Hello
          Hello
          Hello

rules: the string must be output to the string x number of times, where x is the integer value passed
in as an argument

data structure: 

not sure what to call this but I know how I'm going to write my algo almost already

algorithm:

- call the times method on the integer that we pass in an argument
- within the do..end block that we pass to the times method as an argument, call the puts method
- and pass in the string as an argument.


=end

def repeat(string, integer)
  integer.times do 
    puts string
  end
end

repeat('Hello', 3)