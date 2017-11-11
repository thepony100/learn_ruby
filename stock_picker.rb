# File: stock_picker.rb
# Name: Waris Aiemworawutikul
# Desc: method 'stock_picker' that take in an array of stock prices and return the best day to buy and the best day to sell.

def stock_picker prices
	best_buy_date = nil
	best_sell_date = nil
	best_profit = 0
	prices.each_index do |buy_date|
		(buy_date+1...prices.length).each do |sell_date|
			profit = prices[sell_date] - prices[buy_date]
			if profit > best_profit
				best_profit = profit
				best_buy_date = buy_date
				best_sell_date = sell_date
			end
		end
	end
	[best_buy_date,best_sell_date]
end

if __FILE__ == $0
	print stock_picker([17,3,6,9,15,8,6,1,10])

end

