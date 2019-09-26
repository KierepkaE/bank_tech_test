require 'accounthistory'
class Account
  attr_reader :balance, :history_handler

  def initialize(history = AccountHistory.new)
    @history_handler = history
    @balance = 0
  end

  def add(amount,date = Date.today.to_s)
    @balance += amount
    @history_handler.add_log(date,amount,false,@balance)
  end

  def withdraw(amount,date = Date.today.to_s)
    @balance -= amount
    @history_handler.add_log(date,amount,true,@balance)
  end

  def history
    p @history_handler
    @history_handler.show
  end



end