=begin

#Problem

- a stack is a list of values that grows and shrinks dynamically
- a stack is easily implemented in Ruby as an array that uses the push and pop methods
- a stack and register programming language is a language that uses a stack of values
- each operation in the language operates on a register, which can be thought of as the current value
- the register is not part of the stack
- operations that require two values pop the topmost item from the stack - the most recently pushed value - the backend value
- and perform the operation using the popped value and the register value, and then stores teh result back in the register
  - in other words, it removes the last element in the array, performs the action, and replaces the register number with the result


  

when given the input, we need to convert it to an array of commands
  - store this array in a variable

  initialize a current_command variable
  init a stack variable
  init a register variable

iterate over the array and assign the current element to the current_command variable
  - if the current element is a number, assign it to the register
  - if PUSH, push the number into the stack array
  - if another command, make it execute the math and pop the element off the stack array
  - if POP then simply pop the number off the stack array
  - if PRINT then print the register value

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end

require 'pry'

def minilang(input)
  commands = input.split
  current_command = nil
  stack = []
  register = 0

  commands.each do |command|
    current_command = command
    #binding.pry
    case current_command
    when 'PUSH'
      stack.push(register)
    when 'POP'
      register = stack.pop
    when 'MULT'
      register *= stack.pop
    when 'ADD'
      register += stack.pop
    when 'SUB'
      register -= stack.pop
    when 'DIV'
      register /= stack.pop
    when 'MOD'
      register = register % stack.pop
    when 'PRINT'
      p register
    else
      register = current_command.to_i
    end
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')
