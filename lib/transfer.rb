
class Transfer

    attr_accessor  
    attr_reader :amount, :receiver, :sender, :status
  def initialize(sender, receiver, amount)
    @receiver = receiver
    @status = "pending"
    @sender = sender
    @amount = amount
  end

  def valid?
  sender.valid? && receiver.valid? && status == pending
  end

  def execute_transaction
           if valid? && sender.balance > amount 
              receiver.balance += amount 
              sender.balance -= amount
              @status = "complete"
           else
              @status = "rejected"
              puts "Transaction rejected. Please check your account balance."
            end
        
  end
  
  
end
