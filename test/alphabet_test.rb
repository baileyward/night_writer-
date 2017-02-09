require "minitest/pride"
require "minitest/autorun"
require "./lib/alphabet"
require "./lib/file_reader"

class AlphabetTest < Minitest::Test

  def test_number_of_characters
    alphabet = Alphabet.new

    assert_equal 35, alphabet.braille_letter_hash.count
  end

  def test_hash_values_as_braille
    alphabet = Alphabet.new

    alphabet.braille_letter_hash.each do | k, v|
      assert_equal 6, v.length
      v.chars.each do |c|
        assert c == '0' || c == '.'
      end
    end
  end
end
