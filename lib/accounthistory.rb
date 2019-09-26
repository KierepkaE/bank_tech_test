# frozen_string_literal: true

require 'bigdecimal'
require 'bigdecimal/util'
class AccountHistory
  attr_reader :account_history, :add_log, :show, :print_statement, :print_logs, :print_log, :account_credit, :account_debit, :print_titles
  def initialize
    @account_history = []
  end

  def add_log(date, amount, debit, balance)
    amount = '%.2f' % amount
    balance = '%.2f' % balance
    @account_history << (
     {
       date: date,
       amount: amount,
       debit: debit,
       balance: balance
     }
   )
  end

  def show
    @account_history
  end

  def print_statement
    [print_titles, print_logs]
  end

  private

  def print_titles
    "date || credit || debit || balance\n"
  end

  def print_logs(_history = @account_history)
    statement = @account_history.reverse
    statement = statement.map do |log|
      print_log(log)
    end
    statement.join("\n")
  end

  def print_log(log)
    " #{log[:date]} || #{account_credit(log)} || #{account_debit(log)} || #{log[:balance]}"
  end

  def account_credit(log)
    log[:debit] ? log[:amount] : ' '
  end

  def account_debit(log)
    log[:debit] ? ' ' : log[:amount]
  end
end
