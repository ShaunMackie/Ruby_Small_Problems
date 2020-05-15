puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip = sprintf("%.2f",(bill * (tip_percentage / 100)))

total_bill = sprintf("%.2f",(bill + tip.to_f))


puts "The tip is $#{tip}"
puts "The total is $#{total_bill}"
