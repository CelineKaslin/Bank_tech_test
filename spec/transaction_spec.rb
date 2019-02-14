require 'transaction'

describe Transaction do
  subject(:transaction1) { described_class.new(1000, 1000, 0, '12/02/1019') }
  subject(:transaction2) { described_class.new(800, 0, 200, '13/02/1019') }

  describe '#attribute of Transaction' do
    it 'return the balance of the account after a transaction' do
      expect(transaction1.balance).to eq 1000
    end

    it 'return the amount of the credit made' do
      expect(transaction1.credit_made).to eq 1000
    end

    it 'return the amount of the debit made' do
      expect(transaction2.debit_made).to eq 200
    end

    it 'return the date of the transaction' do
      expect(transaction1.date).to eq('12/02/1019')
    end
  end
end
