class Array
  def my_uniq
    self.reduce([]) { |uniques, el| uniques.include?(el) ? uniques : uniques << el }
  end

  def two_sum
    pairs = []
    self.each_index do |start_index|
      (start_index + 1...self.length).each do |end_index|
        pairs << [start_index, end_index] if self[start_index] + self[end_index] == 0
      end
    end
    pairs
  end
end

def my_transpose(array)
  transposed = []
  row = 0
  while row < array.length
    transposed[row] = []
    col = 0
    while col < array.length
      transposed[row] << array[col][row]
      col += 1
    end
    row += 1
  end
  transposed
end


def stock_picker(stock_prices)
  best_time = nil
  biggest_profit = 0

  stock_prices.each_index do |buy_date|
    (buy_date + 1...stock_prices.length).each do |sell_date|
      next if sell_date < buy_date
      current_profit = stock_prices[sell_date] - stock_prices[buy_date]
      if current_profit > biggest_profit
        biggest_profit = current_profit
        best_time = [buy_date, sell_date]
      end
    end
  end
  best_time
end
