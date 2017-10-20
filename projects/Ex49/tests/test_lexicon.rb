require 'lexicon.rb'
#require "test/unit"
require "minitest/autorun"

class TestLexicon<Minitest::Test
    def setup
        #@lexicon=Lexicon.new
    end
    
    def test_directions()
        assert_equal([['direction','north']],Lexicon.scan("north"))
        assert_equal(
        [
            ['direction','north'],
            ['direction','south'],
            ['direction','east']
        ],
        Lexicon.scan("north south east"))
    end

    def test_verbs()
        assert_equal([['verb','go']],Lexicon.scan("go"))
        assert_equal(
        [
            ['verb','go'],
            ['verb','kill'],
            ['verb','eat']
        ],
        Lexicon.scan("go kill eat"))
    end

    def test_stops()
        assert_equal([['stop','the']],Lexicon.scan("the"))
        assert_equal(
        [
            ['stop','the'],
            ['stop','in'],
            ['stop','of']
        ],
        Lexicon.scan("the in of"))
    end

    def test_nouns()
        assert_equal([['noun','bear']],Lexicon.scan("bear"))
        assert_equal(
        [
            ['noun','bear'],
            ['noun','princess']
        ],
        Lexicon.scan("bear princess"))
    end

    def test_numbers()
        assert_equal([['number',1234]],Lexicon.scan("1234"))
        assert_equal(
        [
            ['number',3],
            ['number',91223]
        ],
        Lexicon.scan("3 91223"))
    end

    def test_errors()
        assert_equal(Lexicon.scan("ADFD"),[['error',"ADFD"]])
        assert_equal(
        [
            ['noun','bear'],
            ['error','IAS'],
            ['noun','princess']
        ],
        Lexicon.scan("bear IAS princess"))
    end




end