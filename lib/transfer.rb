class Transfer

    attr_reader 
    attr_accessor :reciever, :status, :sender, :transfer
  def initialize(transfer, reciever, sender)
    @transfer = transfer
    @reciever = reciever
    @status = "pending"
    @sender = sender
  end






















end
