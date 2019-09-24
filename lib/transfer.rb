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

  def execute transaction
    counter = 0
    if sender.valid? && reciever.valid?
      if amount <= sender.balance
        reciver.balance += amount && sender.balance -= amount
        puts "complete"
        counter +=1
      esle if  
      counter > 0
      end
      else
    end
end
  
  
  
  
end
