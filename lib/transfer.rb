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
  binding.pry
  if sender
  
  
  end

end
