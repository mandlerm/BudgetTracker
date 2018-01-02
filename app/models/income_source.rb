class IncomeSource < ApplicationRecord
  has_many :transactions
  belongs_to :user, through: :transactions
  
   validates :name, uniqueness: true
end
