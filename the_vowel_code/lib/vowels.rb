class Vowels
    def encode(s)
        s.gsub(/[aeiou]/, 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5)
    end
    
    def decode(s)
        s.gsub(/[0-9]/, '1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u')
    end
end