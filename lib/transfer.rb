
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
    if valid? && sender.balance > amount
        receiver.balance.deposit(amount) && sender.balance - amount
        @status = "complete"
     else
        if @status != pending
             @status = "rejected"
             puts "Transaction rejected. Please check your account balance."
        end
      end
    end

  
  
end
