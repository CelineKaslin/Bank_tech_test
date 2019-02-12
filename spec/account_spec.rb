require 'account'

describe Account do

  subject(:account) {described_class.new}

  describe '#balance' do
    it "has a default balance of 0" do
      expect(account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it "increase the balance of the account" do
      expect(account.deposit(1000)).to eq(1000)
    end
  end

end
