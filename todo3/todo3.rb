# ask the user for their birthday
puts "What's your birthday?"
birthday = gets.chomp 
today = "November 14"

puts birthday == today ? "Happy Birthday" : "I'm sorry, but it's not your birthday. :( "