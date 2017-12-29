class Transaction < ApplicationRecord
  belongs_to :budget
  belongs_to :income
  belongs_to :outgo
end
