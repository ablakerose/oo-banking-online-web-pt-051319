require 'pry'
class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    if @sender.balance > @amount && @status == "pending"
      @amount = @sender.balance - @amount
      @amount = @receiver.balance + @amount
      @status = "complete"
      binding.pry
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end

end
