class Wave
    def make_wave(str)
        wave = []
        i = 0
        # i keeps track of our position in the word and serves to end our "while" loop
        while i < str.length 
            # guard statement to prevent 'non-alphabet' characters from capitalization
            if ('a'..'z').include?(str[i])
                # rotates characters until the one we need uppercase is first in array
                upcased = str.chars.rotate(i).join.capitalize
                # rotates characters back to original position and pushes to wave
                wave <<  upcased.chars.rotate(-i).join
            end
            i += 1
        end
        wave
    end
end