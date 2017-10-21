#module Parse
require "lexicon.rb"
    class ParseError<Exception
    end

    class Sentence
        def initialize(sentence)
            @subject=nil
            @verb=nil
            @object=nil

            parse_sentence(sentence)
        end

        attr_reader :subject
        attr_reader :verb
        attr_reader :object
        

private
        def preview_type(word_list)
            if word_list
                return word_list[0][0]
            else
                return nil
            end
        end

        def fetch(word_list)
            if word_list
                return word_list.shift
            end
            return nil
        end

        def skip_word(word_list,type)
            while(preview_type(word_list)==type)
                fetch(word_list)
            end
        end

        def parse_subject(word_list)
            skip_word(word_list,'stop')
            next_word_type=preview_type(word_list)

            if next_word_type=='noun'
                return fetch(word_list)
            elsif next_word_type=='verb'
                return ['noun','player']
            else
                raise ParseError.new("Expected a verb or a noun next.")
            end
        end


        def parse_verb(word_list)
            skip_word(word_list,'stop')
            next_word_type=preview_type(word_list)
            if next_word_type=='verb'
                return fetch(word_list)
            else
                raise ParseError.new('Expected a verb next.')
            end
        end

        def parse_object(word_list)
            skip_word(word_list,'stop')
            next_word_type=preview_type(word_list)
            if next_word_type=='noun'|| next_word_type=='direction'
                return fetch(word_list)
            else 
                raise ParseError.new("Expected a noun or direction next.")
            end
        end
        def parse_sentence(sentence)
            begin
                word_list=Lexicon.scan(sentence)
                @subject=parse_subject(word_list)[1]
                @verb=parse_verb(word_list)[1]
                @object=parse_object(word_list)[1]
            rescue
                return nil
            end
        end
    end
#end