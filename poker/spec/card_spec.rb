require "card"

RSpec.describe Card do
  subject(:card) { Card.new("four", "S") }
  describe "#initialize" do
    it "creates a card with a value" do
      expect(card.value).to eq("four")
    end
    it "creates a card with a suit" do
      expect(card.suit).to eq("S")
    end
  end
end