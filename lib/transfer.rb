
class Transfer

    attr_accessor :status 
    attr_reader :amount, :receiver, :sender, 
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
        if @status != pending
             @status = "rejected"
             puts "Transaction rejected. Please check your account balance."
        else
           if valid? && sender.balance > amount 
        receiver.balance+= self.amount && sender.balance -= amount
        @status = "complete"
           end
          end
        end

  
  
end
