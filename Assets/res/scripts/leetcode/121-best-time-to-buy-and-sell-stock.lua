-- https://leetcode.cn/problems/best-time-to-buy-and-sell-stock/solution/

function maxProfit(prices)
    local inf = math.maxinteger
    local minprice, maxprofit = inf, 0
    for i = 1, #prices do
        maxprofit = math.max(maxprofit, prices[i] - minprice)
        minprice = math.min(prices[i], minprice)
    end
    return maxprofit
end

print(maxProfit({7, 1, 5, 3, 6, 4}))
print(maxProfit({7, 6, 4, 3, 1}))
