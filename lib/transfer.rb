class Transfer

    attr_reader :transfer, :sender
    attr_accessor :reciever, :status
  
  def initialize(transfer,sender,reciever)
    @transfer = transfer
    @sender = sender
    @reciver = reciever
    @status = "pending"
  end





















end
