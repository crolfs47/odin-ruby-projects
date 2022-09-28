# Implement a method #stock_picker that takes an array of stock prices, one for each 
# hypothetical day. It should return a pair of days representing the best day to buy 
# and the best day to sell. Days start at 0.


def stock_picker(stock_prices)
    max_profit = 0
    max_buy_index = 0
    max_sell_index = 0
    stock_prices.each_with_index do |buy_stock, buy_index|
        stock_prices[buy_index..-1].each_with_index do |sell_stock, sell_index|
            if sell_index >= buy_index
                buy_price = stock_prices[buy_index]
                sell_price = stock_prices[sell_index]
                profit = sell_price - buy_price
                if profit > max_profit
                    max_profit = profit
                    max_buy_index = buy_index
                    max_sell_index = sell_index
                end
            end
        end
    end
    best_day = [max_buy_index, max_sell_index]
    p best_day
    
end

stock_prices = [17,3,6,9,15,8,6,1,10]
stock_picker(stock_prices)

# Method below solves for highest profit, different solution than what the question is asking for (accidentally did this first)

def stock_pickerx(stock_prices)
    profits = []
    stock_prices.each_with_index do |stock, index|
        buy_price = stock_prices[index]
        num_stocks = stock_prices.length

        if index == num_stocks - 1
            sell_price = buy_price
        else 
            sell_price = stock_prices.last(num_stocks - index - 1).max
        end
        profit = sell_price - buy_price
        profits[index] = profit
    end
    p profits
    p profits.max
   
end