class BankStatement

  attr_reader :all_transactions

  def initialize(accountflow)
    @all_transactions = accountflow
  end

  def print_statement
    puts "balance || credit || debit "
    @all_transactions.each do |transaction|
      puts "#{transaction.balance} || #{transaction.credit_made} || #{transaction.debit_made}"
    end
  end

end
