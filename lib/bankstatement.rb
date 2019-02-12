class BankStatement

  attr_reader :all_transactions

  def initialize(accountflow)
    @all_transactions = accountflow
  end

  def print_statement
    puts "date || credit || debit || balance"
    @all_transactions.all.reverse.each do |transaction|
      puts "#{transaction.date} || #{transaction.credit_made} || #{transaction.debit_made} || #{transaction.balance}"
    end
  end

end
