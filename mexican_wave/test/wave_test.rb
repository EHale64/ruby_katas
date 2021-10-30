require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/wave'

class WaveTest < MiniTest::Test
    def setup
        @wave = Wave.new
    end

    def test_it_makes_wave
        assert_equal ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"], @wave.make_wave("codewars")
        assert_equal ["Hello", "hEllo", "heLlo", "helLo", "hellO"], @wave.make_wave("hello")
        assert_equal [], @wave.make_wave("")
        assert_equal ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"], @wave.make_wave("two words")
        assert_equal [" Gap ", " gAp ", " gaP "], @wave.make_wave(" gap ")
    end
end