def add(a,b)
    puts "Adding #{a}+#{b}"
    a+b
end

def substract(a,b)
    puts "Subtracting #{a}-#{b}"
    a-b
end

def multiply(a,b)
    puts "Multiplying #{a}*#{b}"
    a*b
end

def divide(a,b)
    puts "Dividing #{a}/#{b}"
    a/b
end

puts "Let's do some math with just functions!"

age=add(30,5)
height=substract(78,4)
weight=multiply(90,2)
iq=divide(100,2)

puts "Age:#{age},Height:#{height},Weight:#{weight},IQ:#{iq}"

#what=add(age,substract(height,multiply(weight,divide(iq,2))))
what=add(24,substract(divide(34,100),1023))

puts "That becomes: #{what}. Can you do it by hand?"