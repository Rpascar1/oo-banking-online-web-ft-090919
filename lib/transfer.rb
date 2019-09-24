class Transfer

    attr_reader :sender
    attr_accessor :status, :amount, :reciever
  def initialize(sender, reciever, amount)
    @reciever = reciever
    @status = "pending"
    @sender = sender
    @amount = amount
  end



end
