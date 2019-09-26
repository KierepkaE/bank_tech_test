class AccountHistory

  attr_reader :account_history, :add_log, :show
  def initialize
    @account_history = []
  end


  def add_log(date,amount,debit,balance)
    @account_history << (
     {
      date: date,
      amount: amount.to_f.round(2),
      debit: debit,
      balance: balance.to_f.round(2)
     }
    )
  end

  def show
    @account_history
  end
end


