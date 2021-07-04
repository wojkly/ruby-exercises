class StockPicker
    def stock_picker(prices)
        max_profit = -1
        result = nil
        for i in 0...(prices.length - 1)
            for j in (i + 1)...prices.length
                if prices[j] - prices[i] > max_profit
                    max_profit = prices[j] - prices[i]
                    result = [i,j]
                end
            end
        end
        # p result
        result
    end
end
