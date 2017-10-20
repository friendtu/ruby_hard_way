class Lexicon
    @@verbs=['go','kill','eat','stop']
    @@directions=['north','west','east','south','down','up','left','right','back']
    @@nouns=['door','bear','princess','cabinet']
    @@stops=['the','in','of','from','at','it']

    @@directory={
        'direction'=>@@directions,
        'verb'=>@@verbs,
        'noun'=>@@nouns,
        'number'=>nil,
        'stop'=>@@stops
    }

    def Lexicon.convert_number(object)
        begin
            return Integer(object)
        rescue
            return nil
        end
    end

    def Lexicon.scan(input)
        result=[]
        input.split(' ').each do |object|
            word=object.downcase
            found=false
            for kv in @@directory
                if(kv[0]!='number')
                    if (kv[1].find_index(word))
                        result.push([kv[0],object])
                        found=true
                    end
                else
                    number=convert_number(word)
                    if(number)
                        result.push([kv[0],number])
                        found=true
                    end
                end
                if(found) 
                    break
                end
            end
            if(!found)
                result.push(['error',object])
            end
        end
        return result
    end
end