require 'parse.rb'
require 'lexicon.rb'
require "minitest/autorun"

class TestParse<Minitest::Test


    def test_parse_sentence()
        word_list=Lexicon.scan("Go east")
        sentence=Parse.parse_sentence(word_list)
        assert(sentence)
        assert_equal("player",sentence.subject)
        assert_equal("Go",sentence.verb)
        assert_equal("east",sentence.object)
    end

    def test_parse_exception()
        word_list=Lexicon.scan("We go east")
        assert_raises(Parse::ParseError){Parse.parse_subject(word_list)}
    end
end