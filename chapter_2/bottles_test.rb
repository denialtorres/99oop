gem 'minitest', '~>5'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bottles'


class BottlesTest < Minitest::Test
  def test_first_verse
    expected = "99 bottles of milk on the wall, " +
    "99 bottles of milk.\n" +
    "Take one down and pass it around, " +
    "98 bottles of milk on the wall.\n"
    assert_equal expected, Bottles.new.verse(99)
  end
end
