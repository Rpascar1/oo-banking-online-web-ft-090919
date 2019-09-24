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
      if sender.amount <= sender.balance
        receiver.balance += sender.amount && sender.balance -= sender.amount
        @status = "complete"
     elsif
        @status != pending
        puts "Transaction rejected. Please check your account balance."
   
     end
  end
end
  
  
end
