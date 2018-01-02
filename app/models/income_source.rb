class IncomeSource < ApplicationRecord
  has_many :transactions
  has_one :user, through: :transactions

   validates :name, uniqueness: true
end
