class Outgo < ApplicationRecord
  has_many :categories
  has_many :budgets
  has_one :user, through: :budgets
end
