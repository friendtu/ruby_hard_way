
class Parent
    def override()
        puts "PARENT override()"
    end
    
    def implicit()
        puts "PARENT implicit()"
    end

    def altered()
        puts "PARENT altered"
    end
end

class Child<Parent
    def override()
        puts "CHILD, override()"
    end

    def altered()
        puts "CHILD, before parent altered()"
        super()
        puts "CHILD, after parent altered()"
    end
end

dad=Parent.new()
son=Child.new()

son.override()
son.altered()
son.implicit()