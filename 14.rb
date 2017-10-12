user_name=ARGV.first

prompt=">"

puts "Hi #{user_name}."

puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}?",prompt
likes=gets.chomp

puts """
Alright, so you said #{likes} about liking me.
"""