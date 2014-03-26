require './password_generator'

puts "How long would you like you password to be? (please enter a numerical value)"

inputted_length = gets.chomp.to_i

puts "Your password is:"
puts PasswordGenerator.new(inputted_length).generate

