class BankStatement

  attr_reader :all_transactions

  def initialize(accountflow)
    @all_transactions = accountflow
  end

  def print_statement
    puts "date || credit || debit || balance"
    @all_transactions.all.reverse_each do |transaction|
      puts "#{transaction.date} || \n #{transaction.credit_made} || \n #{transaction.debit_made} || \n #{transaction.balance}"
    end
  end

end
