input_file=ARGV.first

def print_all(f)
    puts f.read
end

def rewind(f)
    f.seek(0)
end

def print_a_line(line_count,f)
    puts "#{line_count}, f.readline"
end

current_file=open(input_file)

print_all(current_file)


rewind(current_file)
print_a_line(1,current_file)
print_a_line(2,current_file)
print_a_line(3,current_file)