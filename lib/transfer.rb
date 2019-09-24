
class Transfer

    attr_accessor :amount, :receiver, :sender, :status
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
           if valid? && sender.balance > amount 
             if @status == "pending"
              receiver.balance += amount 
              sender.balance -= amount
              @status = "complete"
              end
           else
              @status = "rejected"
              puts "Transaction rejected. Please check your account balance."
            end
        
  end
  
  
end
