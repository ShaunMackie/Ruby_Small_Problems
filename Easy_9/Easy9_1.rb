=begin

#Problem

- create a method that takes 2 arguments, an array and a hash
- the array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. 
- the hsah will contain two keys, :title and :occupation, and the appropriate values.
- your method should return a greeting that uses the person's full name, and mentions the person's titla and occupation. 

#Input

an array and a hash
- the array contains two or more words making up the person's name
- the hash contains the person's title and occupation

#Output

- a string greeting the user and referencing their occupation, as per the given example

#Examples

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

#Rules + Questions

- how do we handle invalid inputs?

#Algorithm and Data Structure

turn the given array into a string so we can reference it with string interpolation:
- init a local variable to store the string version of the given array, convert it to a string using join


- use string interpolation to output the required sentence with the right data

=end

def greetings(array, hash)
  name = array.join(' ')

  p "Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
  
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."