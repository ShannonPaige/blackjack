class Player
  attr_accessor :name, :hand

  def initialize(name, hand = [])
    @name = name
    @hand = []
    @hit = nil
  end

  def cards
    @hand.join(", ")
  end

  def score
    Cards.score(@hand.join(", "))
  end

  def hit
    @hit = Cards.pick_a_card
    @hand << @hit
    p @hit
  end

end
