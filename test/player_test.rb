gem 'minitest'
require './lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PlayerTest < Minitest::Test
  def setup
    @player = Player.new("John")
    @game = Game.new(@player)
  end

  def test_can_create_a_new_player_given_a_name
    assert_equal "John", @player.name
  end

  def test_player_has_cards
    @game.deal
    @player.cards
    assert_equal String, @player.cards.class
  end

  def test_players_score_can_be_calculated
    @player.hand = ["2 of Hearts", "K of Spades"]
    assert_equal 12, @player.score
  end

  def test_player_can_hit_on_thier_cards
    @player.hand = ["2 of Hearts", "K of Spades"]
    assert_equal String, @player.hit
  end

end
