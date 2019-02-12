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

  describe '#withdraw' do
    it "decrease the balance of the account" do
      account.deposit(1000)
      expect(account.withdraw(200)).to eq (800)
    end

    it "decrease the balance to a negative number if more deduction than balance available" do
      expect(account.withdraw(500)).to eq(-500)
    end
  end





  
end
