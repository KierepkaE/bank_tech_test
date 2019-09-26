class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def add(amount,date = Date.today.to_s)
    @balance += amount
  end

end