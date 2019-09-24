class Transfer

    attr_reader :transfer, :sender
    attr_accessor :reciever, :status
  
  def initialize(transfer,sender,reciever)
    @transfer = transfer
    @reciever = reciever
    @status = "pending"
    @sender = sender
  end






















end
