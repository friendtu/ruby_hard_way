require 'parse.rb'
require 'lexicon.rb'
require "minitest/autorun"

class TestParse<Minitest::Test
    def setup
    end


    def test_parse_sentence()
        word_list=Lexicon.scan("Go east")
        sentence=Parse.parse_sentence(word_list)
        assert(sentence)
        assert_equal("player",sentence.subject)
        assert_equal("Go",sentence.verb)
        assert_equal("east",sentence.object)
    end
end