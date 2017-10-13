module Ex25

    def Ex25.break_word(stuff)
        return stuff.split(' ')
    end

    def Ex25.sort_words(words)
        words.sort
    end

    def Ex25.print_first_word(words)
        puts words.shift
    end

    def Ex25.print_last_word(words)
        puts words.pop
    end

    def Ex25.sort_sentence(sentence)
        sort_words(break_word(sentence))
    end

    def Ex25.print_first_and_last(sentence)
        words=break_word(sentence)
        print_first_word(words)
        print_last_word(words)
    end

    def Ex25.print_first_and_last_sorted(sentence)
        words=sort_sentence(sentence)
        print_first_word(words)
        print_last_word(words)
    end
end



