require 'bankstatement'

describe BankStatement do

  let(:transaction_1) { double :transaction, balance: 1000, credit_made: 1000, debit_made: 0, date: '10-01-2012' }
  let(:transaction_2) { double :transaction, balance: 3000, credit_made: 2000, debit_made: 0, date: '13-01-2012' }
  let(:transaction_3) { double :transaction, balance: 2500, credit_made: 0, debit_made: 500, date: '14-01-2012' }
  subject(:bankstatement) { described_class.new }
  let(:accountflow) { double flow: [transaction_1, transaction_2, transaction_3] }

  describe '#print_statement' do
    it "prints the statement with all the transaction of the account" do
      expect { bankstatement.print_statement(accountflow.flow) }.to output("date || credit || debit || balance\n14-01-2012 || 0 ||500 || 2500\n13-01-2012 || 2000 ||0 || 3000\n10-01-2012 || 1000 ||0 || 1000\n").to_stdout
    end
  end
end
