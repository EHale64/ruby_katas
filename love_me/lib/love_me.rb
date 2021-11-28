class LoveMe
    def how_much_i_love_you(nb_petals)
        phrases = ["I love you", "a little", "a lot", "passionately", "madly", "not at all"]
        phrases[(nb_petals - 1) % 6]
    end
end