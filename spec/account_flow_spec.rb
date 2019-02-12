require 'accountflow'

describe AccountFlow do
  subject(:account_flow) {described_class.new}
  let(:transaction_1) {double  balance: 0, credit_made: 1000, debit_made: 0 }
  let(:transaction_2) {double balance: 1000, credit_made: 0, debit_made: 200 }

  it "should have no flow by default" do
    expect(account_flow.flow).to be_empty()
  end

  describe '#add_flow' do
    it "should add the transaction to the array flow of all the transactions" do
      account_flow.add_flow(transaction_1)
      account_flow.add_flow(transaction_2)
      expect(account_flow.flow).to include(transaction_1)
      expect(account_flow.flow).to include(transaction_2)
    end
  end


end
