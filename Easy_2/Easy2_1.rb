  age = rand(20..200)

  puts "Hi, what's your name?"
  name = gets.chomp
  
  if name == ''
    name = "Teddy"
  end
  
  puts "#{name} is #{age} years old!"
