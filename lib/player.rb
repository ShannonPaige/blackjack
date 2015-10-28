class Player
  attr_accessor :name, :hand

  def initialize(name, hand = [])
    @name = name
    @hand = []
  end

  def cards
    @hand.join(", ")
  end

  def score
    Cards.score(@hand)
  end

  def hit
    hit = Cards.pick_a_card(@hand)
    @hand << hit
    hit
  end

end
