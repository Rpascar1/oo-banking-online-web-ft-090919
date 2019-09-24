class Transfer

    attr_reader :transfer, :sender
    attr_accessor :reciever, :status,
  def initialize(transfer, reciever, sender)
    @transfer = transfer
    @sender = sender
    @reciever = reciever
    @status = "pending"
    @sender = sender
  end






















end
