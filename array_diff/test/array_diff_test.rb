require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/array_diff'

class ArrayDiffTest < MiniTest::Test
    def setup
        @array_diff = ArrayDiff.new
    end

    def test_it_finds_diff
        assert_equal [2], @array_diff.array_diff([1,2], [1])
        assert_equal [1], @array_diff.array_diff([1,2,2], [2])
        assert_equal [2,2], @array_diff.array_diff([1,2,2], [1])
        assert_equal [1,2,2], @array_diff.array_diff([1,2,2], [])
        assert_equal [], @array_diff.array_diff([], [1,2])
        assert_equal [3], @array_diff.array_diff([1,2,3], [1,2])
    end
end