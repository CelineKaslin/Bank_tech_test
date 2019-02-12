require 'bankstatement'

describe BankStatement do

  let(:transaction_1) {double  balance: 0, credit_made: 1000, debit_made: 0 }
  let(:transaction_2) {double balance: 1000, credit_made: 0, debit_made: 200 }
  let(:accountflow) {double flow:[transaction_1, transaction_2]}
  subject(:bankstatement) {described_class.new(accountflow)}

  it "returns all the transactions" do
    expect(bankstatement.all_transactions).to eq accountflow
  end

end
