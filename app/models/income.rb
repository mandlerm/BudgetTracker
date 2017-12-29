class Income < ApplicationRecord
  has_many :income_sources
  belongs_to :budget
  belongs_to :user, through: :budgets
end
