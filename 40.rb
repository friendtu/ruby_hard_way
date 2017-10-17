class Song
    def initialize(lyrics)
        @lyrics=lyrics
    end

    def sing_me_a_song()
        @lyrics.each{|line| puts line}
    end

    Sound="loud"
end

happy_bday=Song.new(["Happy birthday to you",
"I don't watn to get sued",
"So I'll stop right there"])

sad_day=Song.new(["sad"])

happy_bday.sing_me_a_song
puts "sound: #{Song::Sound}"


