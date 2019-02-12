class Transaction

attr_reader :balance, :transaction_amount, :transaction_made

def initialize(balance, transaction_amount, transaction_made)
  @balance = balance
  @transaction_amout = transaction_amount
  @transaction_made = transaction_made
end

end
