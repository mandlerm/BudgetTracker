class IncomeSource < ApplicationRecord
  belongs_to :income
  # has_many :budgets
  # belongs_to :user, :through => :budgets
end
