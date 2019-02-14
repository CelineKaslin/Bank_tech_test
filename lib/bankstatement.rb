class BankStatement

  def print_statement(all_flow)
    header
    statement(all_flow)
  end

  private

  def header
    puts "date || credit || debit || balance\n"
  end

  def statement(all_flow)
    records =''
    all_flow.reverse_each do |transaction|
      records = "#{transaction.date} || #{transaction.credit_made} ||\
#{transaction.debit_made} || #{transaction.balance}\n"
      puts records
    end
  end

end
