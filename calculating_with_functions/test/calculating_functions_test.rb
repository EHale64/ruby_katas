require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/calculating_functions'

class CalculatingFunctionsTest < MiniTest::Test
    def setup
        @calculator = CalculatingFunctions.new
    end

    def test_it_adds
        assert_equal 4, @calculator.two(plus(two()))
    end

    # def test_it_multiplies
    #     assert_equal 35, @calculator.seven(times())
    # end
end