class BankStatement
  attr_reader :all_transactions

  def initialize(accountflow)
    @all_transactions = accountflow
  end

  # def print_statement
  #   puts 'date || credit || debit || balance'
  #   @all_transactions.flow.reverse_each do |transaction|
  #     puts "#{transaction.date} || #{transaction.credit_made} || #{transaction.debit_made} || #{transaction.balance}"
  #   end
  # end
  def print_statement
    display = "date || credit || debit || balance\n"
    @all_transactions.flow.reverse_each do |transaction|
      display << "#{transaction.date} || #{transaction.credit_made} || #{transaction.debit_made} || #{transaction.balance}\n"
    end
    puts display
  end
end
