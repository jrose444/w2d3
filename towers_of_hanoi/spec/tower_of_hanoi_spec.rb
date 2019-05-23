require "tower_of_hanoi"

RSpec.describe Tower do 
  subject(:tower) { Tower.new }

  describe "#initialize" do
    it "sets an array of a length of 3" do
      expect(tower.towers).to eq([[1,2,3],[],[]])
    end
    it "last two subarrays are empty" do
      expect(tower.towers).to eq([[1,2,3],[],[]])
    end
  end

  describe "#move" do 
    it "moves front value of subarray to othersubarray" do
      tower.move([0,2])
      expect(tower.towers).to eq([[2,3],[],[1]])
    end
  end
end