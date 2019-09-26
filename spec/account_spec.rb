# frozen_string_literal: true

require 'account'
require 'accounthistory'
require 'date'

describe Account do
  it 'has default balance of 0' do
    account = Account.new
    expect(account.balance).to eq 0
  end

  it 'can withdraw' do
    account = Account.new
    date = Date.new(2019, 9, 26)
    account.add(1000, date)
    account.withdraw(100, date)
    expect(account.balance).to eq 900
  end

  it 'can be given a deposit' do
    account = Account.new
    date = Date.new(2019, 9, 26)
    account.add(100, date)
    expect(account.balance).to eq 100.00
  end

  it 'have access to account history ' do
    account = Account.new
    date = Date.new(2019, 9, 26)
    account.add(500, date)
    expect(account.balance).to eq 500
    expect(account.history).to include(
      date: date,
      amount: '500.00',
      debit: false,
      balance: '500.00'
    )
  end

  it 'can print account statement' do
    account = Account.new
    account.add(1000, Date.new(2010, 8, 9))
    account.add(3000, Date.new(2010, 8, 9))
    account.withdraw(100, Date.new(2019, 1, 3))
    statement = "date || credit || debit || balance\n 2019-01-03 || 100.00 ||   || 3900.00\n 2010-08-09 ||   || 3000.00 || 4000.00\n 2010-08-09 ||   || 1000.00 || 1000.00"
    expect(account.history_handler.account_history[0][:date]).to be_an_instance_of(Date)
    expect(account.print_statement).to eq(statement)
  end
end
