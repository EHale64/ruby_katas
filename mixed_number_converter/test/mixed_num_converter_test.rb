require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/mixed_num_converter'

class MixedNumberConverterTest < MiniTest::Test
    def setup
        @converter = MixedNumberConverter.new
    end

    def test_it_encodes
        assert_equal '2', @converter.mixed_fraction('6/3')
        assert_equal '4 2/3', @converter.mixed_fraction('42/9')
        assert_equal '2/3', @converter.mixed_fraction('4/6')
        assert_equal '1 48998/93701', @converter.mixed_fraction('713495/468505')
        assert_equal '-2/3', @converter.mixed_fraction('4/-6')
        assert_equal '-2/3', @converter.mixed_fraction('4/-6')
        assert_equal '0', @converter.mixed_fraction('0/18891')
        assert_equal '-1 3/7', @converter.mixed_fraction('10/-7')
        assert_equal '-1 3/7', @converter.mixed_fraction('-10/7')
        assert_equal '3 1/7', @converter.mixed_fraction('-22/-7')
        assert_equal 'Must raise ZeroDivisionError', @converter.mixed_fraction('0/0')
        assert_equal 'Must raise ZeroDivisionError', @converter.mixed_fraction('3/0')
    end
end