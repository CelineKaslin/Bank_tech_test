class Transaction

  attr_reader :balance, :credit_made, :debit_made

  def initialize(balance, credit_made, debit_made)
    @balance = balance
    @credit_made = credit_made
    @debit_made = debit_made
  end

end
