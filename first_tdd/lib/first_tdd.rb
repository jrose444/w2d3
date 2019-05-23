class Array

  def my_unique
    empty_arr = []
    self.each do |ele|
      empty_arr << ele unless empty_arr.include?(ele)
    end
    empty_arr
  end

  def two_sum
    results = []
    (0...length-1).each do |i|
      (i+1...length).each do |j|
        results << [i, j] if self[i] + self[j] == 0
      end
    end
    results
  end

  def my_transpose
    results = []
    length.times do |i|
      sub_array = []
      self.each do |ele|
        sub_array << ele[i]
      end
        results << sub_array
    end
    results
    # self.each_with_index do |row, i|
    #   row.each_with_index do |ele, j|
    #     sub_array = []
    #   end
    # end
  end

  def stock_picker
    winner = []
    sell_price = 0
    self.each_with_index do |buy, idx1|
      self.each_with_index do |sell, idx2|
        if idx2 > idx1 
          if sell - buy > sell_price
            sell_price = sell - buy
            winner = [idx1, idx2]
          end
        end
      end
    end
    winner
  end

  
end