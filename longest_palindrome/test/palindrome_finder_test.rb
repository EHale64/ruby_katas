require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/palindrome_finder'
require 'json'
require 'pry'

class PalindromeFinderTest < MiniTest::Test
    def setup
        @max_palindrome = PalindromeFinder.new
    end

    def test_max_finder
        assert_equal 1, @max_palindrome.longest_palindrome('a')
        assert_equal 2, @max_palindrome.longest_palindrome('aa')
        assert_equal 2, @max_palindrome.longest_palindrome('baa')
        assert_equal 2, @max_palindrome.longest_palindrome('aab')
        assert_equal 4, @max_palindrome.longest_palindrome('baabcd')
        assert_equal 9, @max_palindrome.longest_palindrome('baablkj12345432133d')
    end
end