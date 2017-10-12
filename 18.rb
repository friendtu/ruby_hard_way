def print_two(*args)
    arg1,arg2=args
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_two_again(arg1,arg2)
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
    puts "arg1: #{arg1}"
end

def print_none()
    puts "no argument"
end

def my_method((a,b))
    puts "#{a}, #{b}"
end

print_two("Donnie","Tu")
print_two_again("Donnie","Tu")
print_one("Donnie")
print_none()

my_method([1,2])