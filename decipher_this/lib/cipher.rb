class Cipher
    def decipher_this(text)
         text.split(" ").map do |word|
            characters = word.delete("1234567890").chars
            characters[0], characters[-1] = characters[-1], characters[0]
            word.to_i.chr + characters.join 
        end.join(" ")
    end

    def encrypt_this(text)
        text.split(" ").map do |word|
            characters = word[1..-1].chars
            characters[0], characters[-1] = characters[-1], characters[0]
            word.ord.to_s + characters.join
        end.join(" ")
    end
end
