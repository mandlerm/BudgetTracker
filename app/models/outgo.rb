class Outgo < ApplicationRecord
  has_many :categories
  has_many :budgets
  belongs_to :user, through: :budgets
end
