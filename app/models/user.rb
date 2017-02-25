class User < ApplicationRecord
  has_secure_password
  has_many :accounts

  def account_movements
    account = accounts.first
    if account
      account.account_movements
    else
      []
    end
  end

  def account_number
    account = accounts.first
    if account
      account.number
    else
      ""
    end
  end

  def balance
     account = accounts.first
     balance = 0

     if account
       account.account_movements.each do |movement|
         balance = balance + movement.value
       end
     end

     balance
  end
end
