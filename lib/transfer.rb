class Transfer

    attr_reader :transfer
    attr_accessor :reciever, :status, :sender
  def initialize(transfer, reciever, amount)
    @transfer = transfer
    @reciever = reciever
    @status = "pending"
  
  end






















end
