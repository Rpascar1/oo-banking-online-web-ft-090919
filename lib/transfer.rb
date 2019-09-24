
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
    counter = 0
    if sender.valid? && receiver.valid?
      if sender.amount <= sender.balance
        receiver.balance += sender.amount && sender.balance -= sender.amount
        @status = "complete"
     elsif
        if @status != pending
          @status = "rejected"
        puts "Transaction rejected. Please check your account balance."
        end
      end
    end
  end
  
  
end
