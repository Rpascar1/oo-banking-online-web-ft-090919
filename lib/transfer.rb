class Transfer

    attr_reader :transfer
    attr_accessor :reciever, :status, :sender
  
  def initialize(transfer,sender,reciever)
    @transfer = transfer
    @sender = self.sender
    @reciver = reciever
    @status = "pending"
  end





















end
