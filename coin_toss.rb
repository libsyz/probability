# class simulates a coin toss and reports its results
class CoinToss
  attr_reader :ledger, :heads

  def initialize(coin_balance)
    @heads = coin_balance
    @ledger = []
  end

  def throw(amount = 1)
    amount.times do
      rand > heads ? ledger << "heads" : ledger << "tails"
    end
  end

  def deviation_from_ideal
    return "ledger is empty!" if ledger.size == 0
    heads_number = ledger.count("heads")
    ( (ledger.size / 2) - heads_number).abs
  end

end

coin = CoinToss.new(0.5)

puts coin.deviation_from_ideal
