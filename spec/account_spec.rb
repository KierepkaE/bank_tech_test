require 'account'
require 'date'


describe Account do
  it 'has default balance of 0' do
    account = Account.new
    expect(account.balance).to eq 0
  end

  it 'can be given a deposit' do
    account = Account.new
    date = Date.new(2019,9,26)
    account.add(100,date)
    expect(account.balance).to eq 100
  end
end


