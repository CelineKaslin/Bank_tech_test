require_relative 'transaction'

class Account

  attr_reader :balance

  BALANCE = 0

  def initialize
    @balance = BALANCE
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  private

  def credit(amount)
    Transaction.new(@balance, amount, "credit")
  end

  def debit(amout)
    Transaction.new(@balance, amount, "debit")
  end

end
