require 'accountflow'

describe AccountFlow do
  subject(:account_flow) {described_class.new}
  let(:transaction_1) {double balance: 0, transaction_amount: 1000, transaction_made: "credit" }
  let(:transaction_2) {double balance: 1000, transaction_amount: 200, transaction_made: "debit" }

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
