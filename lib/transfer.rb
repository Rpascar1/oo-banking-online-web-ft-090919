class Transfer

    attr_reader :transfer
    attr_accessor :sender, :reciever, :status
  
  def initialize(transfer,sender,reciever)
    @transfer = transfer
    @sender = sender
    @reciver = reciever
    @status = "pending"
  end





















end
