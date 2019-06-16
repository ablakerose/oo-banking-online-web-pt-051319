class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance=1000, status="open")
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(money)
    #add amount of money to current balance
    @balance = @balance + money
  end

  def display_balance
    return "Your balance is $#{self.balance}."
  end

  def valid?
    @status == "open" && @balance > 0 ? true : false
  end 
  
end
