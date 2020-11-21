=begin

#Problem

A triangle is classified as follows:

    right - One angle of the triangle is a right angle (90 degrees)
    acute - All 3 angles of the triangle are less than 90 degrees
    obtuse - One angle is greater than 90 degrees.

- to be a valid triangle, the sum of the angles must be exactly 180 degrees and all angles must be greater than 0
- otherwise, the triangle is invalid
- write a method that takes 3 angles of a triangle as arugments
- and returns a symbol :right :acute :obtuse: or :invalid
- you may assume integer valued angles so you dont have to worry about floats
- you may assume arguments are specified in degrees


#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

- write a method to determine if three given arguements form a right, acute, or obtuse triangle
- if they do, return the name of the triangle as a symbol
  - if they don't, return :invalid

# Implementation Notes 

- return invalid if one of the angles is 0
- return invalid if the sum of the three angles is not 180
- return obtuse if one angle is greater than 90
- return right if one angle = 90
- return acute otherwise

=end

def triangle(angle1, angle2, angle3)
  return :invalid if angle1 == 0 || angle2 == 0 || angle3 == 0
  return :invalid if angle1 + angle2 + angle3 != 180
  return :obtuse if angle1 > 90 || angle2 > 90 || angle3 > 90
  return :right if angle1 == 90 || angle2 == 90 ||angle3 == 90
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

