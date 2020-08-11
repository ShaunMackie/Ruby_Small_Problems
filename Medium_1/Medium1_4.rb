=begin

#Problem

- you have a bank of switches, numbered 1 to n. Each switch is initially OFF.
- you turn every switch on on the first pass
- on the 2nd pass, you toggle every 2nd switch, starting with 2, 4, 6 etc.
- on the 3rd pass, you toggle every 3rd switch, 3, 6, 9 etc.
- you repeat this process until you have been through n repetitions

- write a method that takes one argument, the total number of switches, and returns an Array
- that indentifies which lights are on after n repetitions

#Input

 - a positive integer

#Output

- an array

#Examples

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]

# Rules + Questions

- all lights start as OFF
- the first pass, you turn all lights on etc etc

#Algorithm 

- create a data structure that has X elements, where X is the given argument
- mark all elements as ON - this could be +/- or on/off or 1/0 etc
- iterate over the elements, changing the state of every 2nd element to it's opposite state
- repeat for every 3rd, 4th, etc until the last iteration is the given integer argument
- return an array containing numbers that represent the switches that are currently turned on

# Implementation Notes 

- initialize a hash, assign it X number of keys, starting fom 1 to X, where X is the given inter argument
- assign all keys the value of 'ON'
- iterate over the values, changing every 2nd value to 'OFF'
  - initialize a counter and assign it a value of current_number
  - initialize a variable current_number and assign a value of 2
  - create a loop
  - use a conditional
    - if hash[counter] == ON switch to off else switch to ON
    - counter += current_number
    - break if counter >= integer
  - wrap the above loop in a loop that increments current number by 1 and breaks when current number >= integer

- iterate over the values, changing every 3rd value to it's opposite
- continue this process until you've done X iterations
- search the hash for keys that have values of 'ON'
- compile these keys in a array and return the array
=end

def lights(integer)
  array = []
  hash = {}
  current_number = 2
  counter = current_number

  (1..integer).each do |number|
    hash[number] = 'ON'
  end
  
  loop do
    loop do
      if hash[counter] == 'OFF'
        hash[counter] = 'ON'
      else
        hash[counter] = 'OFF'
      end
      counter += current_number
      break if counter >= integer
    end

    break if current_number >= integer
    current_number += 1
    counter = current_number
  end
  
  hash.each do |k, v|
    array << k if v == 'ON'
  end
  array
end

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]

# some hack and slash near the end but we solved it :)