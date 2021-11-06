require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/vowels'

class VowelsTest < MiniTest::Test
    def setup
        @vowels = Vowels.new
    end

    def test_it_encodes
        assert_equal "h2ll4", @vowels.encode("hello")
        assert_equal "H4w 1r2 y45 t4d1y?", @vowels.encode("How are you today?")
        assert_equal "Th3s 3s 1n 2nc4d3ng t2st.", @vowels.encode("This is an encoding test.")
    end

    def test_it_decodes
        assert_equal "hello", @vowels.decode("h2ll4")
    end
end