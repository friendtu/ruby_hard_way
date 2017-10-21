require 'parse.rb'
require 'lexicon.rb'

word_list=Lexicon.scan("bear go east")
sentence=Parse.parse_sentence(word_list)
puts "sensence: #{sentence.subject} #{sentence.verb} #{sentence.object}"

