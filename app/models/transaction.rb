class Transaction < ApplicationRecord
  belongs_to :income, optional: true
  belongs_to :outgo, optional: true
  belongs_to :user

  
end
