require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/string_incrementer'

class StringIncrementerTest < MiniTest::Test
    def setup
        @string_incrementer = StringIncrementer.new
    end

    def test_it_squares
        assert_equal "foo1", @string_incrementer.increment_string("foo")
        assert_equal "1", @string_incrementer.increment_string("")
        assert_equal "foobar2", @string_incrementer.increment_string("foobar1")
        assert_equal "foobar100", @string_incrementer.increment_string("foobar99")
        assert_equal "foobar02", @string_incrementer.increment_string("foobar01")
        assert_equal "foobar002", @string_incrementer.increment_string("foobar001")
        assert_equal "1", @string_incrementer.increment_string('1')
        assert_equal "010", @string_incrementer.increment_string('009')
    end
end