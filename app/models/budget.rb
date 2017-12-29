class Budget < ApplicationRecord
  has_many :incomes
  has_many :outgos
  belongs_to :user
  has_many :spending_categories
end
