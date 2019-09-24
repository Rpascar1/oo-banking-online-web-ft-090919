class Transfer

    attr_reader :transfer
    attr_accessor :reciever, :status, :sender
  
  def initialize(transfer, sender, reciever)
    @transfer = transfer
    @reciever = reciever
    @status = "pending"
    @sender = sender
  end






















end
