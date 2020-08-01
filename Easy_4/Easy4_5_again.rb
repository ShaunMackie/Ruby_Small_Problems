=begin

#Problem

- write a method that searches for all multiples of 3 and 5 that lie between 1 and the given number
- then compute the sum of those multiples
- for example, if the number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)
- the given integer will be greater than 1

#Input

- a positive integer

#Output

- an integer which is the sum of all the occurences of multiples of 3 and 5 between 1 and the given number

#Examples

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

#Rules + Questions

- the given interger will alwyas be greater than 1
- sum up all the multiples of 3 and 5 found in a given number

#Algorithm and Data Structure

- initialize a loval variable and point it to an empty array to store the multiples in
- initialize two counters, and point them both to the integer 1 to keep strack of where
- were at with which multiple for each 3 and 5
- initialize a loop
- shovel coiunter1 * 3 into the results array
- break when count1*3 is greater than integer
- do a 2nd loop and same stps for 5
- sum the results array when finished

=end

def multisum(integer)
  results = []
  counter1 = 1
  counter2 = 1

  loop do
    break if counter1 * 3 > integer
    results << counter1 * 3
    counter1 +=1
  end

  loop do
    break if counter2 * 5 > integer
    results << counter2 * 5
    counter2 +=1
  end

 results.uniq.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168