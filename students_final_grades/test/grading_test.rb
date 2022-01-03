require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/grading'

class GradingTest < MiniTest::Test
    def setup
        @grades = Grading.new
    end

    def test_it_can_sequence
        assert_equal 100, @grades.final_grade(100, 12)
        assert_equal 90, @grades.final_grade(85, 5)
        assert_equal 75, @grades.final_grade(65, 2)
    end
end