
=begin

#Problem

A triangle is classified as follows:

    equilateral All 3 sides are of equal length
    isosceles 2 sides are of equal length, while the 3rd is different
    scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, 
and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol 
:equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

#Input

- 3 integers

#Output

- a symbol

#Examples

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

# Rules + Questions

- to be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side
- all sides must have lengths greater than 0

#Algorithm 

- determine if the given arguments(sides) form a triangle (by the above-mentioned definition of 'triangle')
  - if a side argument value is 0, return :invalid
  - if all 3 sides are equal, return :equilateral
  - if the sum of two of the three sides is not greater than the third side, return :invalid
  - if all three sides are different, return :scalene
  - if two sides are equal, return :isoceles

# Implementation Notes - first method

  - initialize a `sides` variable and assign an array containing the 3 given integer arguments (sides)
  - return :invalid if the sum of the two lesser sides is less than the largest side or if any of the sides are zero
  - return :equilateral if all 3 sides have the same value
  - return :isosceles if any 2 sides have the same value
  - return :scalene if all 3 sides have a different value


# Implementation Notes - second method

 - initialize a 'sides' variable and assign an array containing the 3 given integer arguments (sides)
- if any of the sides are zero, return :invalid
- if all 3 sides are equal, return :equilateral
- sum each combination of the two sides together. If any two are not greater than the third, return :invalid
- if all 3 sides are different, return :scalene
- if two sides are equal, return :isoceles

***I realize that for this exercise, my algorithm and my implementation notes are very similar,
  but I felt this made the most sense for these solutions, unless I should include more Ruby-specific syntax in the
  notes for these implementations.***


=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return :invalid if (sides[0] + sides[1] < sides.last) || sides.any?(0)
  return :equilateral if sides.uniq.size == 1
  return :isosceles if sides.uniq.size == 2
  return :scalene if sides.uniq.size == 3
end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]

  return :invalid if sides.any?(0)
  return :equilateral if sides.all?(side1)

  return :invalid if sides[0] + sides[1] < sides[2]
  return :invalid if sides[1] + sides[2] < sides[0]
  return :invalid if sides[2] + sides[0] < sides[1]

  return :scalene if sides == sides.uniq
  return :isosceles if sides.count(side1) == 2 || sides.count(side2) == 2
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
p triangle(3, 4, 11) == :invalid