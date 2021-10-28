require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/row_weights'

class RowWeightsTest < MiniTest::Test
    def setup
        @weighted = RowWeights.new
    end

    def test_it_squares
        assert_equal [80, 0], @weighted.row_weights([80])
        assert_equal [100, 50], @weighted.row_weights([100, 50])
        assert_equal [120,140], @weighted.row_weights([50,60,70,80])
        assert_equal [62,27], @weighted.row_weights([13,27,49])
        assert_equal [236,92], @weighted.row_weights([70,58,75,34,91])
        assert_equal [211,164], @weighted.row_weights([29,83,67,53,19,28,96])
        assert_equal [150,151], @weighted.row_weights([100,51,50,100])
        assert_equal [0,0], @weighted.row_weights([0])
        assert_equal [207, 235], @weighted.row_weights([39,84,74,18,59,72,35,61])
        assert_equal [0,1], @weighted.row_weights([0,1,0])
    end
end