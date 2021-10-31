require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/counting'

class CalculatingFunctionsTest < MiniTest::Test
    def setup
        @characters = Characters.new
    end

    def test_it_counts_chars
        assert_equal ({}), @characters.count_chars("")
        assert_equal ({"a" => 2, "b" => 1}), @characters.count_chars("aba")
    end
end