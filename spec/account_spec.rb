require 'account'

describe Account do

  subject(:account) { described_class.new }
  let(:accountflow) { double flow: [transaction_1, transaction_2] }
  let(:transaction_1) { double balance: 1000, credit_made: 1000, debit_made: 0, date: '12/02/2019'}
  let(:transaction_2) { double balance: 800, credit_made: 0, debit_made: 200, date: '13/02/2019' }
  let(:bankstatement) { double print_statement: accountflow}

  describe '#balance' do
    it 'has a default balance of 0' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'increase the balance of the account' do
      expect { account.deposit(1000) }.to change { account.balance }.from(0).to(1000)
    end

    it 'create a new transaction recorded as credit and register it in the accountflow' do
      account.deposit(1000)
      expect(accountflow.flow).to include(transaction_1)
    end

  end

  describe '#withdraw' do
    it 'decrease the balance of the account' do
      account.deposit(1000)
      expect { account.withdraw(200) }.to change { account.balance }.from(1000).to(800)
    end

    it 'decrease the balance to a negative number if more deduction than balance available' do
      expect { account.withdraw(500) }.to change { account.balance }.from(0).to(-500)
    end

    it 'creates a new transaction recorded as debit and register it in the accountflow' do
      account.withdraw(200)
      expect(accountflow.flow).to include(transaction_2)
    end
  end

  describe '#display_statement' do
    it 'calls the print statement on the bankstatement' do
      allow(bankstatement).to receive(:print_statement).with(accountflow).and_return("date || credit || debit || balance\n13-02-2019 || 0 ||200 || 800\n12-02-2019 || 1000 ||0 || 1000\n")

    end
  end
end
