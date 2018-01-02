class Transaction < ApplicationRecord
  belongs_to :income_source, optional: true
  belongs_to :user
  has_many :categories


end
