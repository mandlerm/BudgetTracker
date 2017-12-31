class Income < ApplicationRecord
  has_many :income_sources
  has_many :transactions
  has_one :user, :through => :transactions
end
