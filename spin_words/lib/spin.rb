class Spin
    def spin_words(string)

        split = string.split(" ")

        spun = split.map do |word|
            if word.size >= 5
                word.reverse
            else
                word
            end
        end
        spun.join(" ")
    end
end