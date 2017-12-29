class Income < ApplicationRecord
  has_many :income_sources
  belongs_to :budget
  has_one :user, through: :budgets
end
