require "player"
require "cards"

class Game
  attr_accessor :player

  def initialize(player)
    @player = player
  end

  def deal
    2.times do
      @player.hand << Cards.pick_a_card
    end
  end
end
