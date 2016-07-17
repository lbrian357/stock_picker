def stock_picker(prices)
  days_to_profit = {}
  prices.each do |price|
    i = prices.index(price)
    while i< (prices.length)
      days_to_profit[[prices.index(price), i]] = prices[i]-price
      i += 1
    end
  end
  days_to_profit.invert[(days_to_profit.values.max)]
end
