class Income < ApplicationRecord
  belongs_to :income_sources
  has_many :transactions
  has_one :user, :through => :transactions

   validates :date, :amount, presence: true
end
