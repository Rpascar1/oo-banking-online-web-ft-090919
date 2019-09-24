class Transfer

    attr_reader :sender, :reciever, :amount
    attr_accessor :status, 
  def initialize(sender, reciever, amount)
    @reciever = reciever
    @status = "pending"
    @sender = sender
    @amount = amount
  end



end
