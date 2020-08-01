=begin

#Problem

- create a method that takes two arguments, an array and a hash
- the array will contain 2 or more elements tht, when combined with adjoining spaces,
- will produce a person's name. The hash wil contain two keys, title and occupation
- and the appropriate values
- your method should return a greeting that uses the person's full name and mentions the person' title and occupation

#Input

- an array and a hash

#Output

- a string greeting that includes the person's full name and mentions their title and occupation

#Examples

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

#Rules + Questions

- how do we handle an invalid input?
- the arra will contain two or more elements that produce a person's name
- the hash will contain two keys: title and occupation

#Algorithm and Data Structure

init a string, use interpolation to inser the name by calling join on the array with a single space as an arugment
- using interpolation, access the values from the hash to output the proper title

=end
def greetings(array, hash)
  puts "=> Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })