require'pry'

class Transfer

    attr_reader :sender 
    attr_accessor :status, :amount, :receiver
  def initialize(sender, receiver, amount)
    @receiver = receiver
    @status = "pending"
    @sender = sender
    @amount = amount
  end

  def valid?
  sender.valid? && receiver.valid?
  end

  def execute_transaction
    counter = 0
    if sender.valid? && receiver.valid?
      if self.sender.amount <= self.sender.balance
        receiver += sender && sender.balance -= sender.amount
        puts "complete"
     else
        puts "Transaction rejected. Please check your account balance."
   
     end
  end
end
  
  
end
