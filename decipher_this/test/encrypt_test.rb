require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/cipher'

class CipherTest < MiniTest::Test
    def setup
        @cipher = Cipher.new
    end
    def test_it_decodes
        assert_equal "65 119esi 111dl 111lw 108dvei 105n 97n 111ka", @cipher.encrypt_this("A wise old owl lived in an oak")
        assert_equal "84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp", @cipher.encrypt_this("The more he saw the less he spoke")
        assert_equal "84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare", @cipher.encrypt_this("The less he spoke the more he heard")
        assert_equal "87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri", @cipher.encrypt_this("Why can we not all be like that wise old bird")
        assert_equal "84kanh 121uo 80roti 102ro 97ll 121ruo 104ple", @cipher.encrypt_this("Thank you Piotr for all your help")
    end
end