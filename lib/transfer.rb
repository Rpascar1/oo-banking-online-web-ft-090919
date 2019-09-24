
class Transfer

    attr_accessor :status 
    attr_reader :amount, :receiver, :sender
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
    if valid? 
      if self.amount <= sender.balance
        receiver.balance + self.amount && sender.balance - self.amount
        @status = "complete"
     else
        if @status != pending
             @status = "rejected"
             puts "Transaction rejected. Please check your account balance."
        end
      end
    end
  end
  
  
end
