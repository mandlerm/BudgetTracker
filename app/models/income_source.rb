class IncomeSource < ApplicationRecord
  has_many :incomes
  # has_many :budgets
  # belongs_to :user, :through => :budgets
   validates :name, uniqueness: true
end
