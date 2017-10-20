require 'lexicon.rb'
#require "test/unit"
require "minitest/autorun"

class TestLexicon<Minitest::Test
    def setup
        #@lexicon=Lexicon.new
    end
    
    def test_directions()
        assert_equal(Lexicon.scan("north"),[['direction','north']])
    end
end