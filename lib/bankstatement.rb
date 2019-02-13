class BankStatement
  attr_reader :all_transactions

  def initialize(accountflow)
    @all_transactions = accountflow
  end

  def header
    puts "date || credit || debit || balance\n"
  end

  def print_statement
    header
    @all_transactions.flow.reverse_each do |transaction|
      puts "#{transaction.date} || #{transaction.credit_made} ||\
#{transaction.debit_made} || #{transaction.balance}\n"
    end
  end
end
