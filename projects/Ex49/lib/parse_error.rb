#module Parse
    class ParseError<Exception
    end

    class Sentence
        def initialize(subject,verb,obj)
            @subject=subject[1]
            @verb=verb[1]
            @object=obj[1]
        end

        attr_reader :subject
        attr_reader :verb
        attr_reader :object
    end


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

    def skip(word_list,type)
        while(preview_type(word_list)==type)
            fetch(word_list)
        end
    end

    def parse_subject(word_list)
        skip(word_list,'stop')
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
        skip(word_list,'stop')
        next_word_type=preview_type(word_list)
        if next_word_type=='verb'
            return fetch(word_list)
        else
            raise ParseError.new('Expected a verb next.')
        end
    end

    def parse_object(word_list)
        skip(word_list,'stop')
        next_word_type=preview_type(word_list)
        if next_word_type=='noun'|| next_word_type=='direction'
            return fetch(word_list)
        else 
            raise ParseError.new("Expected a noun or direction next.")
        end
    end


    def parse_sentence(word_list)
        begin
            subject=parse_subject(word_list)
            verb=parse_verb(word_list)
            object=parse_object(word_list)
            return Sentence.new(subject,verb,object)
        rescue
            return nil
        end
    end
#end