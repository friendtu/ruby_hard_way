puts "Let's practice everything."
puts 'You\'s need to know\'bout escapes with \\ that do \n newlines and \t tabs.'


poem=<<-END
The lovely world
with logic so firmly planted
cannot discern
the needs of live
    where there is none.
    END

puts '-'*20
puts poem
puts '-'*20

def secret_formula(started)
    return started/4,started/3,started/2
end


t1,t2,t3=secret_formula(100)
puts "t1:${t1}, t2=#{t2}, t3=#{t3}"