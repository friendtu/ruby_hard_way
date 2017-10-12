filename=ARGV.first

puts "We're going to erase #{filename}."
puts "If you don't want this, hit CTRL-C(^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target=open(filename,'w')

#puts "Truncating the file. Goodbye!"
#target.truncate(0)

puts "Now I'm going to ask you for the three line."

print "line 1:"
line1=$stdin.gets.chomp

print "line2:"
line2=$stdin.gets.chomp

print "line3:"
line3=$stdin.gets.chomp

puts "I'm going to write these to the file."
target.write("#{line1}\n#{line2}\n#{line2}\n")

puts "And finally, we close it"
target.close