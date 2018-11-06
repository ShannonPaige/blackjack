class Cards
  def self.pick_digit
    ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].sample
  end

  def self.pick_suit
    ["Clubs", "Hearts", "Diamonds", "Spades"].sample
  end

  def self.pick_a_card(used = [])
    if !used.include?(pick_digit+pick_suit)
      used << pick_digit+pick_suit
      return pick_digit + " of " + pick_suit
    else
      Game.deal
    end
  end

  def self.score(hand)
    values = []
    hand.each do |card|
      values << card.gsub("of Clubs", "")
                    .gsub("of Hearts", "")
                    .gsub("of Diamonds", "")
                    .gsub("of Spades", "")
                    .gsub(",", "")
                    .gsub("J", "10")
                    .gsub("Q", "10")
                    .gsub("K", "10")
                    .gsub("A", "11")
    end
    sum = values.reduce(0) {|sum, n| sum + n.to_i }
  end

end
