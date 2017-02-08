require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
require './lib/alphabet'

class NightWriterTest < Minitest::Test

  def test_can_encode_a_letter
    writer = NightWriter.new

    assert_equal "0.\n..\n..\n", writer.encode_to_braille("a")
  end

  def test_can_encode_cap_letter
    writer = NightWriter.new

    assert_equal "..0.\n....\n.0..\n", writer.encode_to_braille("A")
  end

  def test_decodes_letter
    writer = NightWriter.new

    assert_equal "a", writer.encode_from_braille("0.\n..\n..\n")
  end

  def test_decodes_cap_letter
    writer = NightWriter.new

    assert_equal "A", writer.encode_from_braille("..0.\n....\n.0..\n")
  end 
end
