class Outgo < ApplicationRecord
  belongs_to :sub_category
  belongs_to :transactions
  has_one :user, :through => :transaction
end
