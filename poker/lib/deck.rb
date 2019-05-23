require_relative "card.rb"

class Deck
  attr_reader :deck

  def initialize

    suit_hash = {
      "0" => "S", 
      "1" => "H", 
      "2" => "C", 
      "3" => "D",
    }
    value_hash = {
      "Two" => 0,
      "Three" => 1,
      "2" => 3,
      "3" => 4,
      "4" => 5,
      "5" => 6,
      "6" => 7,
      "7" => 8,
      "8" => 9,
      "9" => 10,
      "10" => 11,
      "11" => 12,
      "12" => 13,
      
    }

    @deck = []

    (0...52).each do |i|
      deck << Card.new(value_hash[(i%13).to_s], suit_hash[(i%4).to_s])
    end
  end

  def shuffle
    @deck = deck.shuffle
  end
end

d = Deck.new
d.deck.shuffle
p d.deck
