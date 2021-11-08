require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/decipher'

class DecipherTest < MiniTest::Test
    def setup
        @decipher = Decipher.new
    end
    def test_it_decodes
        assert_equal "A wise old owl lived in an oak", @decipher.decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka")
        assert_equal "The more he saw the less he spoke", @decipher.decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp")
        assert_equal "The less he spoke the more he heard", @decipher.decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare")
        assert_equal "Why can we not all be like that wise old bird", @decipher.decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri")
        assert_equal "Thank you Piotr for all your help", @decipher.decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple")
    end
end