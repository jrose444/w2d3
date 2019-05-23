require "deck"

RSpec.describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "creates a deck with 52 cards" do
      expect(deck.deck.length).to eq(52)
    end
  end
  describe "#shuffle" do
    it "shuffles the deck" do
      prev = deck.deck
      expect(deck.deck).to eq(prev)
      deck.shuffle
      expect(deck.deck).to_not eq(prev)
    end
  end
  
end