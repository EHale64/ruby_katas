class Characters
    def count_chars(s)
        output = {}
        s.chars.each do |char|
            # binding.pry
            # output[char] += s.chars.count(char)
            output.store(char, s.chars.count(char))
        end
        output
    end
end