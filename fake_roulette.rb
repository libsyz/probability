
class FakeRoulette
  attr_accessor :numbers, :balance, :bet, :events, :won, :loss

  Event = Struct.new(:outcome, :number)

  def initialize
    @bet = 10
    @won = 0
    @loss = 0
    @current_event = nil
    @numbers = (0...60).to_a
    @balance = 0
    @events = []
  end

  def roll
    @current_event = Event.new(nil, @numbers.sample)
    @events.push(@current_event)
  end

  def simulate(rounds = 1)
    rounds.times do
      roll
      if @current_event.number >= 31
        @current_event.outcome = "win"
        @won += @bet
        @bet = 10
      else
        @current_event.outcome = "loss"
        @loss += @bet
        @bet = @bet * 2
      end
    end
    @balance = @won - @loss
  end
end

fake = FakeRoulette.new

fake.simulate(61)
puts fake.events
puts "total earnings: #{fake.won}"
# total_losses = fake.events.select { |e| e.outcome == "loss"}.count
puts "total losses: #{fake.loss}"
puts "balance: #{fake.balance}"


