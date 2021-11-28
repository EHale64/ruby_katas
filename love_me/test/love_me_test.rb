require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/love_me'

class LoveMeTest < MiniTest::Test
    def setup
        @flower = LoveMe.new
    end

    def test_it_finds_love
        assert_equal "I love you", @flower.how_much_i_love_you(7)
        assert_equal "a lot", @flower.how_much_i_love_you(3)
        assert_equal "not at all", @flower.how_much_i_love_you(6)
    end
end