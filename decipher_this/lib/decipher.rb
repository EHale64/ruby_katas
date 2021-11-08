class Decipher
    def decipher_this(string)
         string.split(" ").map do |word|
            characters = word.delete("1234567890").chars
            characters[0], characters[-1] = characters[-1], characters[0]
            word.to_i.chr + characters.join 
        end.join(" ")
    end
end
