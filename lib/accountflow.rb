class AccountFlow

  attr_reader :flow

  def initialize
    @flow = []
  end

  def add_flow(transaction)
    @flow << transaction
  end

end
