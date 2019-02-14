require_relative 'transaction'

class Account
  attr_reader :balance

  BALANCE = 0

  def initialize(accountflow = AccountFlow.new, transaction = Transaction, date = Date.today.strftime)
    @balance = BALANCE
    @accountflow = accountflow
    @transaction = transaction
    @date = date
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    debit_made = 0
    new_transaction(deposit_amount, debit_made)
  end

  def withdraw(debit_amount)
    @balance -= debit_amount
    credit_made = 0
    new_transaction(credit_made, debit_amount)
  end

  private

  def new_transaction(credit_made, debit_made)
    new_record = @transaction.new(@balance, credit_made, debit_made, @date)
    @accountflow.add_flow(new_record)
  end

end
