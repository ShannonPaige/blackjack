gem 'minitest'
require './lib/cards'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class CardsTest < Minitest::Test

  def test_a_random_suit_is_chosen
    skip
    assert_equal "Hearts", Cards.pick_suit
  end

  def test_a_random_digit_is_chosen
    skip
    assert_equal "2", Cards.pick_digit
  end

  def test_a_random_card_is_chosen
    skip
    assert_equal "2 of Clubs", Cards.pick_a_card
  end

end
