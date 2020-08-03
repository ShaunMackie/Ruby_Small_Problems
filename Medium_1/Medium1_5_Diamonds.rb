
=begin

#Problem

- Ruby Small Problems - Medium_1 Problem #5 - Diamonds!

- write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer
  that is supplied as an argument to the method
- the argument will always be an odd integer

#Input

- an odd integer

#Output

- a series of spaces and asterisks (forming a diamond pattern on the screen)

#Examples

diamond(1)

*

diamond(3)

 *
***
 *

 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

# Rules + Questions

- the argument will always be an odd integer

#Algorithm 

1. output a series of spaces followed by a series of asterisks (start with 1 asterisk)
2. increase the amount of asterisks by 2 while reducing the number of spaces by 1
3. repeat steps 1 and 2 until the amount of asterisks in the current string is equal to the given integer argument
4. reduce the amount of asterisks by 2 and increase the amount of spaces by 1
5. repeat step 1 and 4 until the amount of asterisks in the current string is equal to 1


#Implementation Notes - first method

  - initialize an `asterisks` variable and assign the value of the given integer argument less 1
  - call the times method on the given integer argument
  - output * to the value of the given integer argument minus the absolute value of asterisks variable, while using the `center` method to output spaces
  - reduce the value of asterisks by 2


# Implementation Notes - second method

- return a single asterisk with no spaces if the given arguement is equal to 1
- initialize a `asterisk_counter` variable to track the current count of asterisks - assign a value of 1
- initialize a `spaces_counter` variable to track the current count of spaces
  - Substract 1 from the given argument and divide the result in half to determine how many spaces are needed - assign this value to spaces_counter

- initialize a loop
  - output spaces equal to the value of spaces_counter followed by asterisks equal to the value of asterisk_counter
  - check to see if the value of astrisk_counter is equal to the given integer arguement. If it is, break out of the loop, if it isn't proceed to next step
  - increment asterisk_counter by 2 and reduce spaces_counter by 1 and repeat the loop

- initialize a loop
  - reduce the value of asterisk_counter by 2 and increase the value of spaces_counter by 1
  - output spaces equal to the value of spaces_counter followed by asterisks equal to the value of asterisk_counter
  - repeat above step until the value of asterisk_counter is equal to 1. Once it's equal to 1, break out of the loop
=end

def diamond(integer)
  asterisks = integer - 1

  integer.times do
    puts ('*' * (integer - asterisks.abs)).center(integer)
    asterisks -= 2
  end
end

def diamond(integer)
  return puts "*" if integer == 1
  
  asterisk_counter = 1
  spaces_counter = (integer - 1) / 2

  loop do 
    puts ' ' * spaces_counter  + '*' * asterisk_counter
    break if asterisk_counter == integer
    asterisk_counter += 2
    spaces_counter -= 1
  end

  loop do
    asterisk_counter -= 2
    spaces_counter += 1
    puts ' ' * spaces_counter  + '*' * asterisk_counter
    break if asterisk_counter == 1
  end
end



diamond(1)
diamond(3)
diamond(9)



