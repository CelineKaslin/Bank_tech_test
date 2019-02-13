require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(0, 1000, 200) }

  it 'return the balance of the account' do
    expect(transaction.balance).to eq 0
  end

  it 'return the amount of the credit made' do
    expect(transaction.credit_made).to eq 1000
  end

  it 'return the amount of the debit made' do
    expect(transaction.debit_made).to eq 200
  end

  it 'return the date of the transaction' do
    expect(transaction.date).to eq(Date.today.strftime)

  end
end
