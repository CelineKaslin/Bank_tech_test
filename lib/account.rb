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

  def withdraw(amount)
    @balance -= amount
    debit(amount)
  end

  private

  def debit(amount)
    Transaction.new(@balance, 0, amount, @date)
  end
end
