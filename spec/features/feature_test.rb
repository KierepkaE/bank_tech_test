require_relative '../../lib/account.rb'
account = Account.new
account.add(1500)
account.withdraw(60)
account.balance
account.print_statement