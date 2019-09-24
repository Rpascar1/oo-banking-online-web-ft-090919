class Transfer

    attr_reader :sender
    attr_accessor :status, :amount, :receiver
  def initialize(sender, receiver, amount)
    @reciever = reciever
    @status = "pending"
    @sender = sender
    @amount = amount
  end



end
