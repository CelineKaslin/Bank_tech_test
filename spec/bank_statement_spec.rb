require 'bankstatement'

describe BankStatement do

  let(:transaction_1) {double  balance: 0, credit_made: 1000, debit_made: 0 }
  let(:transaction_2) {double balance: 1000, credit_made: 0, debit_made: 200 }
  let(:accountflow) {double flow:[transaction_1, transaction_2]}
  subject(:bankstatement) {described_class.new(accountflow)}

  describe '#all_transactions' do
    it "returns all the transactions" do
      expect(bankstatement.all_transactions).to eq (accountflow)
    end
  end

  # describe '#print_statement' do
  #   it "prints the statement with all the transaction of the account" do
  #     expect(bankstatement.print_statement).to eq("0 || 1000 || 0 \n" "1000 || 0 || 200")
  #
  #   end
  # end



end
