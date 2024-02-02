##
# stock_picker.rb
# Ian Kollipara <ikollipara2@huskers.unl.edu>
# 2024.02.02

##
# stock_picker(days)
# @param days An numerical array of highs for a set of days
#
# Return a pair (2-element array) of the best buy day and best sell day

def stock_picker(days)
  return [-1, -1] if days.empty?
  buy_day = 0
  sell_day = 0
  max_profit = 0
  days.combination(2) do |combination|
    if (profit = combination[1] - combination[0]) > max_profit then
      max_profit = profit
      buy_day = combination[0]
      sell_day = combination[1]
    end
  end
  [days.index(buy_day), days.index(sell_day)]
end
