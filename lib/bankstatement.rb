class BankStatement

  attr_reader :all_transactions

  def initialize(accountflow)
    @all_transactions = accountflow
  end

end
