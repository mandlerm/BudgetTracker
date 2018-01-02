I want a user to be able to log in.
A user can create a new transaction either an income or an outgo consisting of
amount, date, and either source or category.
User can see a list of all transactions
User can see list of transactions broken down by category


date
amount
recipient/source
note
category (income:default)  if category == income, positive transaction

User
  has_many transactions
  has_many categories, through transactions

Transaction
  belongs_to user
  belongs_to categories

Categories
  has_many transactions

  @user.transactions
  @user.mortgage (access each category)
  @user.transactions.total







class Budget < ApplicationRecord
  has_many :incomes
  has_many :outgos
  belongs_to :user
end


class Income < ApplicationRecord
  has_many :income_sources
  has_many :budgets
  belongs_to :user, :through => :budgets
end

class Outgo < ApplicationRecord
  has_many :categories
  has_many :budgets
  belongs_to :user, through: :budgets
end

class Outgo < ApplicationRecord
  has_many :categories
  has_many :budgets
  belongs_to :user, through: :budgets
end
