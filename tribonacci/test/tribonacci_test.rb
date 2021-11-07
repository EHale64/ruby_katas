require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/tribonacci'

class TribonacciTest < MiniTest::Test
    def setup
        @tribonacci = Tribonacci.new
    end

    def test_it_can_sequence
        assert_equal [1,1,1,3,5,9,17,31,57,105], @tribonacci.sequence([1,1,1], 10)
        assert_equal [0,0,1,1,2,4,7,13,24,44], @tribonacci.sequence([0,0,1],10)
        assert_equal [0,1,1,2,4,7,13,24,44,81], @tribonacci.sequence([0,1,1],10)
        assert_equal [1,0,0,1,1,2,4,7,13,24], @tribonacci.sequence([1,0,0],10)
        assert_equal [0,0,0,0,0,0,0,0,0,0], @tribonacci.sequence([0,0,0],10)
        assert_equal [1,2,3,6,11,20,37,68,125,230], @tribonacci.sequence([1,2,3],10)
        assert_equal [3,2,1,6,9,16,31,56,103,190], @tribonacci.sequence([3,2,1],10)
        assert_equal [1,1], @tribonacci.sequence([1,1,1],2)
        assert_equal [1], @tribonacci.sequence([1,1,1],1)
        assert_equal [], @tribonacci.sequence([300,200,100],0)
        assert_equal [0.5,0.5,0.5,1.5,2.5,4.5,8.5,15.5,28.5,52.5,96.5,177.5,326.5,600.5,1104.5,2031.5,3736.5,6872.5,12640.5,23249.5,42762.5,78652.5,144664.5,266079.5,489396.5,900140.5,1655616.5,3045153.5,5600910.5,10301680.5], @tribonacci.sequence([0.5,0.5,0.5],30)
    end
end