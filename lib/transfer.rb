class Transfer

    attr_reader :sender, :reciever
    attr_accessor :status, :transfer
  def initialize(sender, reciever, amount)
    @reciever = reciever
    @status = "pending"
    @sender = sender
    @amount = amount
  end






















end
