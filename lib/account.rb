require_relative 'transaction'

class Account
  attr_reader :balance

  BALANCE = 0

  def initialize
    @balance = BALANCE
  end

  def deposit(amount)
    @balance += amount
    credit(amount)
  end

  def withdraw(amount)
    @balance -= amount
    debit(amount)
  end

  private

  def credit(amount)
    Transaction.new(@balance, amount, 0)
  end

  def debit(amount)
    Transaction.new(@balance, 0, amount)
  end
end
