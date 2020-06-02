
def stock_picker (stocks)
    buying_day = stocks[0]
    selling_day = stocks[1]
    possible_profits = []
    operations = []
    #calculates the profits of each possible operation
    stocks.each_with_index do |stock,index|
        buying_day = index + 1
        while index < stocks.length - 1 do
            i = stocks[index + 1].to_i
            selling_day = stocks.find_index(i)+1
            profit = i - stock 
            possible_profits.push(profit)
            operations.push([buying_day,selling_day, profit])
            index += 1 
        end
    end
    buy_low = 0
    sell_high = 0
    highest = possible_profits.sort[-1]
    #loops through each operation to find the buying and selling days with the highest profit
    operations.each do |days|
        p days 
        if days[2] == highest
            buy_low = days[0].to_i
            sell_high = days[1].to_i
        end
    end
    puts "Your best option would be to buy the stocks on day #{buy_low}, 
    and sell it on day #{sell_high}, for a profit of $#{highest} dollars"
end



stock_picker([17,3,6,9,15,8,6,1,10])