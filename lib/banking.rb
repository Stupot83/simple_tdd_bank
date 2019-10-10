class Banking
  def initialize
    @balance = 1000
  end

  def available_balance
    @balance
  end

  def deposit(cash)
    @balance += cash
  end

  def withdraw(cash)
    @balance -= cash
  end
end
