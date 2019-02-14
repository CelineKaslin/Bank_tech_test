require 'date'

class Transaction
  attr_reader :balance, :credit_made, :debit_made, :date

  def initialize(balance, credit_made, debit_made, date)
    @balance = balance
    @credit_made = credit_made
    @debit_made = debit_made
    @date = date
  end
end
