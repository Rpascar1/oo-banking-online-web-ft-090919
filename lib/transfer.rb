class Transfer

    attr_reader :transfer, :sender
    attr_accessor :reciever, :status,
  def initialize(transfer, reciever)
    @transfer = transfer
    @reciever = reciever
    @status = "pending"
    @sender = sender
  end






















end
