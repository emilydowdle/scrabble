gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_two_letters
    assert_equal 20, Scrabble.new.score("zz")
    assert_equal 4, Scrabble.new.score("ab")
  end

  def test_it_can_score_a_3_letterword
    assert_equal 4, Scrabble.new.score("and")
    assert_equal 5, Scrabble.new.score("bit")
  end

  def test_it_does_not_score_numbers
    assert_equal 0, Scrabble.new.score(5)
  end

  def test_it_can_score_an_extra_long_word
    assert_equal 17, Scrabble.new.score("mississippi")
  end

  def test_it_does_not_score_two_words
    assert_equal "Please enter only one word.", Scrabble.new.score("and bit")
  end

  def test_it_returns_zero_for_empty_string
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_returns_zero_for_nil
    assert_equal 0, Scrabble.new.score(nil)
  end

end
