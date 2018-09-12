class BankAccount #----> Class ----> makes



  def initialize(balance, interest_rate) #----> defining states thats are organized under this class - Called Instances or Instance Variables
    @balance = balance  #----> instance variable can be used throughout the code
    @interest_rate = interest_rate #no convereter needed because if you input BankAccount.new('1000') YOURE USING A STRING AND NOT A INTERGET
  end

  def balance  #----->instance methods
    return @balance
  end

  def interest_rate
    return @interest_rate
  end

  def deposit(money)  #-----> Local Variable
    return @balance += money.to_i
  end

  def withdraw(money)
    return @balance -= money.to_i
  end

  def gain_interest
    interest = @balance * @interest_rate
    return @balance += interest
  end

end
