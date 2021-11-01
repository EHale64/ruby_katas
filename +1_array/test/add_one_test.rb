require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/add_one'

class CalculatingFunctionsTest < MiniTest::Test
    def setup
        @array = AddOne.new
    end

    def test_it_counts_chars
        assert_equal [2,4,0], @array.up_array([2,3,9])
        assert_equal [4,3,2,6], @array.up_array([4,3,2,5])
        assert_nil @array.up_array([1,2,3,33])
        assert_nil @array.up_array([1,-9])
        assert_nil @array.up_array([])
    end
end