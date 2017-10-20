class Lexicon
    @@verbs=['go','verb']
    @@direction=['north','west','east','west','down','up','left','right','back']
    @@nouns=['door','bear','princess','cabinet']
    @@number=[0..9]
    @@stop_words=['the','in','of','from','at','it']

    @@directory={'verbs'=>@@verbs,
    'direction'=>@@direction,
    'vouns'=>@@nouns,
    'number'=>@@number,
    'stop_words'=>@@stop_words
    }

    def Lexicon.scan(input)
        input.downcase.split(' ').each do |word|
            result=[]
            for kv in @@directory
                if(kv[1].find_index(word))
                     result.push([kv[0],word])
                     break
                end
            end
            return result
        end
    end
end