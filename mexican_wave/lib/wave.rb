class Wave
    def make_wave(str)
        wave = []
        i = 0
        # i keeps track of our position in the word and serves to end our "while" loop
        while i < str.length 
            if ('a'..'z').include?(str[i])
                upcased = str.chars.rotate(i).join.capitalize
                wave <<  upcased.chars.rotate(-i).join
            end
            i += 1
        end
        wave
    end
end