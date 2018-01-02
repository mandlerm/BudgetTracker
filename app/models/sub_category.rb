class SubCategory < ApplicationRecord
  has_many :transactions
  has_one :users, through: :transactions
  validates :name, uniqueness: true
end
