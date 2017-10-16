require './dict.rb'

states=Dict.new(256,"Doesn't exist")
states.set('Oregon','OR')
states.set('Florida','FL')
states.set('California','CA')
states.set('New York','NY')
states.set('Michigan','MI')

cities=Dict.new(256,"Doesn't exist")
cities.set('CA','San Francisco')
cities.set('MI','Detroit')
cities.set('FL','Jacksonville')
cities.set('NY','New York')
cities.set('OR','Portland')

puts '-'*10
puts "NY state has: #{cities.get('NY')}"
puts "Or state has: #{cities.get('OR')}"

puts '-'*10
puts "Michigan has: #{cities.get(states.get('Michigan'))}"
puts "Texas has: #{cities.get('TX')}"
puts '-'*10
cities.list

puts '-'*10
states.list