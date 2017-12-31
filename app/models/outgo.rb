class Outgo < ApplicationRecord
  has_many :sub_category
  has_many :transactions
  has_one :user, :through => :transaction
end
