class SpendingCategory < ApplicationRecord
  has_many :budgets
  has_many :outgos

end
