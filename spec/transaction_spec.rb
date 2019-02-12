require 'transaction'

describe Transaction do

  subject(:transaction) {described_class.new(0, 1000, "credit")}

  it "return the balance of the account" do
    expect(transaction.balance).to eq(0)
  end

  it "return which transaction have been made" do
    expect(transaction.transaction_made).to eq("credit")
  end

end
