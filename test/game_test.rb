gem 'minitest'
require './lib/game'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GameTest < Minitest::Test

  def setup
    @player = Player.new("John")
    @game = Game.new(@player)
  end

  def test_can_create_a_new_game_given_a_player
    assert_equal "John", @game.player.name
  end

  def test_game_can_deal_cards
    @game.deal
    assert_equal 2, @player.hand.count
  end

end
