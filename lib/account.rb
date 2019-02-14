require_relative 'transaction'

class Account
  attr_reader :balance

  BALANCE = 0

  def initialize(transaction = Transaction, date = Date.today.strftime)
    @balance = BALANCE
    @transaction = transaction
    @date = date
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    debit_made = 0
    new_transaction = @transaction.new(@balance, deposit_amount, debit_made, @date)
  end

  def withdraw(debit_amount)
    @balance -= debit_amount
    credit_made = 0
    new_transaction = @transaction.new(@balance, credit_made, debit_amount, @date)
  end

end
