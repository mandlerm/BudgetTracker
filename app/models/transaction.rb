class Transaction < ApplicationRecord
  belongs_to :income
  belongs_to :outgo
  belongs_to :user
end
