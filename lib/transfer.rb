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
      if self.amount <= sender.balance
        receiver.balance += sender.amount && sender.balance -= sender.amount
        puts "complete"
     else
        return
   
     end
  end
end
  
  
end
