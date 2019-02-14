class BankStatement
  attr_reader :all_transactions

  def initialize(accountflow)
    @all_transactions = accountflow
  end

  def print_statement
    header
    statement
  end

  private

  def header
    puts "date || credit || debit || balance\n"
  end

  def statement
    record =''
    @all_transactions.flow.reverse_each do |transaction|
      record = "#{transaction.date} || #{transaction.credit_made} ||\
#{transaction.debit_made} || #{transaction.balance}\n"
      puts record
    end
  end
  
end
