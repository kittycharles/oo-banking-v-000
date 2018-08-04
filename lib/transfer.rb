class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    (sender.valid? && receiver.valid?) == true
  end

  def execute_transaction
    sender.balance -= self.amount && self.amount += receiver.balance

  end

end
