class Account
 attr_accessor :account_holder
 def initialize
 	@balance = 0
 	@journal = []
 end

 def balance
 	return @balance
 end

 def deposit(amount)
 	@balance += amount
 	@journal << ["Deposited: #{amount}"]
 	return @balance
 end

 def withdraw(amount)
 	@balance -= amount
 	@journal << ["Withdrew: #{amount}"]
 	return @balance
 end

 def transfer(amount, account2)
 	account2.deposit(amount)
 	withdraw(amount)
 end
end


 