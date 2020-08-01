=begin

#Problem

- write a method that takes a positive integer, n, as an argument
- and displays a right triangle whose sides each have n stars
- the hypotenuse of the triangle shoulve have one end at the lower-left of the triangle
- and the other end at the upper-right

#Input

- a positive integer

#Output

- spaces and astrisk's, where the last line of astrisk is the length of the given integer
- and the first line is 1 asktrisk with 8 spaces
- and all lines in between match in cascading form

#Examples

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

#Rules + Questions

#Algorithm and Data Structure

initially it's always 9 characters, mixed between spaces and asktrisks
put integer - 1 spaces + 1 askrisk
add one to the amount of astrisks and minus 1 from the spaces
continue until the astrisk counter == integer

initialize two counters, an astrisk counter and a space counter
give the * counter a value of 1, and the space counte ra value of the given integer -1 

call the times method on integer and pass in a do..end block
  puts a space * spaces + an * * that
  add one to *
  - 1 from spaces

=end

def triangle(integer)
  asterisk = 1
  spaces = integer - 1

  integer.times do 
  puts " " * spaces  + "*" * asterisk 
  asterisk += 1
  spaces -= 1
  end
end

triangle(5)
triangle(9)
triangle(21)