require 'parse_no_module.rb'
require "minitest/autorun"

class TestParse_no_module<Minitest::Test
    def test_parse_sentence()
        sentence=Sentence.new("Go east")
        assert_equal("player",sentence.subject)
        assert_equal("Go",sentence.verb)
        assert_equal("east",sentence.object)
    end
end