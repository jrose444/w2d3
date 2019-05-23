require "first_tdd"

RSpec.describe Array do
  describe "#my_unique" do
    it "removes duplicates from an array" do
      expect([1,2,1,3,3].my_unique).to eq([1,2,3])
    end  
    it "removes duplicates from a non integer array" do
      expect(['cat', 'dog', 'mouse', 'cat', 'pineapple', 'cat'].my_unique).to eq(['cat', 'dog', 'mouse', 'pineapple'])
    end
    it "returns nil if array is empty" do
      expect([].my_unique).to eq([])
    end
  end

  describe "two_sum" do
    it "gives index pairs for pair elements that add to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
    it "indexes appear in order of their original array" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    it "transposes rows of a martix into columns of a matrix" do 
      original = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
      transpose = [[0,3,6], [1,4,7], [2,5,8]]
      expect(original.my_transpose).to eq(transpose) 
    end
  end

  describe "#stock_picker" do
    it "finds the most profitable sell point over an array of days" do
      original = [9, 4, 3, 7, 8, 6, 2]
      expect(original.stock_picker).to eq([2, 4])
    end
  end
end