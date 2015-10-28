gem 'minitest'
require './lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PlayerTest < Minitest::Test
  def setup
    @player = Player.new("John")
    @player.hand = ["2 of Hearts", "K of Spades"]
  end

  def test_can_create_a_new_player_given_a_name
    assert_equal "John", @player.name
  end

  def test_player_has_cards
    expected = "2 of Hearts, K of Spades"
    assert_equal expected, @player.cards
  end

  def test_players_score_can_be_calculated
    assert_equal 12, @player.score
  end

  def test_player_can_hit_on_thier_cards
    @player.hit
    assert_equal 3, @player.hand.count
  end

end
