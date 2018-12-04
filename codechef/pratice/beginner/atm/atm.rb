class ATM
  def initialize(withdrawal, balance)
    @lowestTransaction = 5
    @transactionCost = 0.50
    @withdrawal = withdrawal.to_i
    @balance = balance.to_f
  end

  def correctWithdrawalAmount?
    @withdrawal % @lowestTransaction == 0
  end

  def sufficientFunds?
    @withdrawal + @transactionCost < @balance
  end

  def transaction
    correctWithdrawalAmount? && sufficientFunds? ? @balance = @balance - @withdrawal - @transactionCost : @balance
  end

  def printBalance
    puts "%0.2f" % @balance
  end

end

withdrawal, balance = gets.chomp.split()
pooja = ATM.new(withdrawal, balance)
pooja.transaction
pooja.printBalance
