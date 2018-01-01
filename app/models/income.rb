class Income < ApplicationRecord
  belongs_to :income_source
  has_many :transactions
  has_one :user, :through => :transactions

   validates :date, :amount, presence: true
   # validate a date prior to current date
   # custom validation??
end
