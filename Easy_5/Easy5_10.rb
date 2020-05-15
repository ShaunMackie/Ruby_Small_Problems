# write a method that will take a short line of text and print it within a box

def print_in_box(string)
  box_top_bottom = "+#{"-" * (string.length + 2)}+"
  box_sides =  "|#{" " * (string.length + 2)}|"

 puts box_top_bottom
 puts box_sides
 puts "| #{string} |"
 puts box_sides
 puts box_top_bottom
end

print_in_box("Shaun")
print_in_box("Why didn't it work the first way?")