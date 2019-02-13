# for visibility to debug and to interact with program
# type irb in cmd line from root directory then type :
# require './lib/account.rb'
# require './lib/accountflow.rb'
# require './lib/transaction.rb'
# require './lib/bankstatement.rb'
#
# create your account, transactions and statement
# account = Account.new
# account_flow = AccountFlow.new
# bank_statement = BankStatement.new(account_flow)
# transaction_1 = account.deposit(1000)
# account_flow.add_flow(transaction_1)
# transaction_2 = account.deposit(2000)
# account_flow.add_flow(transaction_2)
# transaction_3 = account.withdraw(500)
# account_flow.add_flow(transaction_3)
# bank_statement.print_statement
